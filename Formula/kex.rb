class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v1.0.0.tar.gz"
  sha256 "b59c1a4fe91c190dbf5e7402b6e281b15f2bd14581177b9e51e7e5cf893581cf"

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
