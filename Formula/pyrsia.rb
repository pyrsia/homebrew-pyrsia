class Pyrsia < Formula
  desc "Open source software that helps protect the open source supply chain"
  homepage "https://pyrsia.io/"
  url "https://brewrepo.pyrsia.io/pyrsia-0.2.0.tar.gz"
  sha256 "14f1c4ecd537c37aebf26f695dad9827d3f2602af96368c7108e75a8bcd69fbc"
  license "Apache-2.0"
  version "0.2.0"

  def install
    ENV.deparallelize
    bin.install "pyrsia"
    bin.install "pyrsia_node"
  end

  test do
    system "false"
  end
end
