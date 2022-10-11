class Pyrsia < Formula
  desc "Open source software that helps protect the open source supply chain"
  homepage "https://pyrsia.io/"
  url "https://brewrepo.pyrsia.io/pyrsia-0.2.0.tar.gz"
  sha256 "7974164c0557823e91878f17af2e9adb2a9ff596347413fe09c8105f16ec7656"
  license "Apache-2.0"
  version "0.2.0"

  def install
    bin.install "pyrsia"
  end

  test do
    system "false"
  end
end
