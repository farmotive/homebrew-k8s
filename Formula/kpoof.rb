class Kpoof < Formula
  desc "Quick k8s pod port-forward utility"
  homepage "https://github.com/farmotive/kpoof"
  url "https://github.com/farmotive/kpoof/archive/v0.1.0.tar.gz"
  sha256 "178672d60116695de48b2004bdcc7abf07108c7d3311291984af0beb2a446deb"

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
