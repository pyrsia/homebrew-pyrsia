class Pyrsia < Formula
  desc "Open source software that helps protect the open source supply chain"
  homepage "https://pyrsia.io/"
  url "https://brewrepo.pyrsia.io/stable/x86_64/pyrsia-0.2.3+2805.tar.gz"
  sha256 "ae41cc095519fd513db79e15cb85234f53832dadf9ceec0979cbd7aee6531084"
  license "Apache-2.0"
  version "0.2.3"

  def install
    ENV.deparallelize
    bin.install "pyrsia"
    bin.install "pyrsia_node"
  end

  def post_install
    (var/"pyrsia").mkpath
  end

  def caveats
    s = <<~EOS
      We've installed your Pyrsia Node.
      To test Pyrsia installation:
        brew test pyrsia
      To run Pyrsia Node as a background service:
        brew services start pyrsia 
      To check the service status:
        brew services list
      To stop Pyrsia Node background service:
        brew services stop pyrsia
    EOS
    s
  end

  service do
    def envvarhash
      return {PATH: std_service_path_env, RUST_LOG: "info,pyrsia=debug"}
    end
    run [opt_bin/"pyrsia_node"]
    keep_alive true
    process_type :background
    environment_variables envvarhash
    log_path var/"pyrsia/logs/stdout/pyrsia_node.log"
    error_log_path var/"pyrsia/logs/stdout/pyrsia_node.log"
    working_dir var/"pyrsia"
  end

  test do
    (testpath/"pyrsia").mkpath
    (testpath/"tmp").mkpath
    child_pid = fork do
      puts "Child process initiated to run pyrsia_node"
      puts "Child pid: #{Process.pid}, pgid: #{Process.getpgrp}"
      #setsid() creates a new session if the calling process is not a process group leader.
      Process.setsid
      puts "Child new pgid: #{Process.getpgrp}"
      puts "Initiating pyrsia_node..."
      system "#{bin}/pyrsia_node"
    end
    puts "Waiting for pyrsia_node to come up..."
    sleep 30
    assert_match "Connection Successful !!",
                 shell_output("#{bin}/pyrsia ping")
    pgid = Process.getpgid(child_pid)
    puts "Sending HUP to group #{pgid}..."
    Process.kill('HUP', -pgid)
    Process.detach(pgid)
    puts "Parent process exiting..."
  end

end
