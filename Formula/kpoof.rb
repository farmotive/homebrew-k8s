class Kpoof < Formula
  desc "Quick k8s pod port-forward utility"
  homepage "https://github.com/farmotive/kpoof"
  url "https://github.com/farmotive/kpoof/archive/2.0.1.tar.gz"
  sha256 "19f9436249c90e285d4b08a1e01f1d187c8adeea4e02051a03bd1b19923e669c"

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
