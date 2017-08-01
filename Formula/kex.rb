class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v0.3.0.tar.gz"
  sha256 "ee282f444039831f44c0670e35ca85b57922972e2bc9bd569fa7ed460ad98b72"

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
