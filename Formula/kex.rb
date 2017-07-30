class Kex < Formula
  desc "Quick k8s pod exec utility"
  homepage "https://github.com/farmotive/kex"
  url "https://github.com/farmotive/kex/archive/v0.1.0.tar.gz"
  sha256 "6a10d923a1a0c6e2a97127715bb71313d284e4998b69480e94e22679b45d9038"

  depends_on "kubernetes-cli"

  def install
    bin.install "kex"
  end

  test do
    # This may be the best we can do, given that we can't assume a kubernetes
    # cluster or pod(s) exist.
    system "which kex"
  end
end
