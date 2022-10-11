class Pyrsia < Formula
  desc "Open source software that helps protect the open source supply chain"
  homepage "https://pyrsia.io/"
  url "https://brewrepo.pyrsia.io/pyrsia-0.2.0.tar.gz"
  sha256 "993e536ea7cd41b5d5b3dddeebb3333c29774255cf9d37c64d5da9e609ecfec4"
  license "Apache-2.0"
  version "0.2.0"

  def install
    bin.install "pyrsia"
    bin.install "pyrsia_node"
  end

  test do
    system "false"
  end
end
