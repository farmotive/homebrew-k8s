class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v0.2.0.tar.gz"
  sha256 "6bf95e3c7e1d8472af027cd5c0f8f5e3f4617b78c30ac195df2fe4304a42efa4"

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
