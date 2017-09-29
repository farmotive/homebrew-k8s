class Kpoof < Formula
  desc "Quick k8s pod port-forward utility"
  homepage "https://github.com/farmotive/kpoof"
  url "https://github.com/farmotive/kpoof/archive/0.3.0.tar.gz"
  sha256 "413966db96b5614588d4708e7a734b71810d25bea00dd013b095ba11d809171b"

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
