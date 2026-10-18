class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.7"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.7/brume_1.7_darwin_arm64.tar.gz"
      sha256 "1e8644a7c4c40046ccf54e2a27b4b5976bacd1b880d2a45da997a53562e18580"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.7/brume_1.7_linux_amd64.tar.gz"
    sha256 "cc7c8f2c536b012ef744ddab7b10327c52a8da12eef179bc269dfb150eef3104"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
