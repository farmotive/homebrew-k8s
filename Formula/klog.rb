class Klog < Formula
  desc "Quick k8s pod log utility"
  homepage "https://github.com/farmotive/klog"
  url "https://github.com/farmotive/klog/archive/1.0.0.tar.gz"
  sha256 "2b2ae7fb6381bea0e967757b170ba70cb6420f39354581bdcca14b69443d42f4"

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
