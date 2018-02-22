class Kud < Formula
  desc "Quick k8s pod delete utility"
  homepage "https://github.com/farmotive/kud"
  url "https://github.com/farmotive/kud/archive/v0.1.1.tar.gz"
  sha256 "bf9b4f8f8cd0764efdd8a40eb2fe21feca14db4394fd25d539453e5f7f55134e"

  depends_on "kubernetes-cli"  => :recommended

  def install
    bin.install "kud"
  end

  test do
    # This may be the best we can do, given that we can't assume a kubernetes
    # cluster or pod(s) exist.
    system "which kud"
  end
end
