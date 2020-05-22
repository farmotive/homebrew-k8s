class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v1.2.1.tar.gz"
  sha256 "07748fbd6b75055197531002928a3b781cff2e7fe41a017285e8e471044b5ae0"

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
