class Kpoof < Formula
  desc "Quick k8s pod port-forward utility"
  homepage "https://github.com/farmotive/kpoof"
  url "https://github.com/farmotive/kpoof/archive/1.0.0.tar.gz"
  sha256 "a9218e9540d66c9549b9cfd9b7ba63e09d9e2092e2e7faadc3da4e5e5635f16a"

  depends_on "kubernetes-cli"  => :recommended

  def install
    bin.install "kpoof"
  end

  test do
    # This may be the best we can do, given that we can't assume a kubernetes
    # cluster or pod(s) exist.
    system "which kpoof"
  end
end
