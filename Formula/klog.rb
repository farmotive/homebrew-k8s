class Klog < Formula
  desc "Quick k8s pod log utility"
  homepage "https://github.com/farmotive/klog"
  url "https://github.com/farmotive/klog/archive/1.1.0.tar.gz"
  sha256 "5e5bc372569f2d9d86c3f13a19414137b338212b994bfeb84c09979f9f6cc94c"

  depends_on "kubernetes-cli"  => :recommended

  def install
    bin.install "klog"
  end

  test do
    # This may be the best we can do, given that we can't assume a kubernetes
    # cluster or pod(s) exist.
    system "which klog"
  end
end
