class Pyrsia < Formula
  desc "Open source software that helps protect the open source supply chain"
  homepage "https://pyrsia.io/"
  url "https://brewrepo.pyrsia.io/stable/x86_64/pyrsia-0.2.0.tar.gz"
  sha256 "63e125e0cde0fa01f0d0b0e72e2b1d845d1512ebc07460f03895873de6c75099"
  license "Apache-2.0"
  version "0.2.0"

  def install
    ENV.deparallelize
    bin.install "pyrsia"
    bin.install "pyrsia_node"
  end

  test do
    system "true"
  end
end
