class Kud < Formula
  desc "Quick k8s pod delete utility"
  homepage "https://github.com/farmotive/kud"
  url "https://github.com/farmotive/kud/archive/v0.1.1.tar.gz"
  sha256 "dbf26f5f2db1f11b979a4e494265c89b395b43b30a31f1ba53519943be013a79"

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
