class Kpoof < Formula
  desc "Quick k8s pod port-forward utility"
  homepage "https://github.com/farmotive/kpoof"
  url "https://github.com/farmotive/kpoof/archive/2.0.0.tar.gz"
  sha256 "1b90c5957602908753b75b7070ca40f65ac7b96a4454734ebfdc138a43a01594"

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
