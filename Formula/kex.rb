class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v1.2.2.tar.gz"
  sha256 "368cb3d0511f68a84b99a0a9937f48d1b5cb45c89fffb3c00f5e6659ee2842e5"

  depends_on "kubernetes-cli"  => :recommended

  def install
    bin.install "kex"
  end

  test do
    # This may be the best we can do, given that we can't assume a kubernetes
    # cluster or pod(s) exist.
    system "which kex"
  end
end
