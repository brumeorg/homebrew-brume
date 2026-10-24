class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "2.1"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/2.1/brume_2.1_darwin_arm64.tar.gz"
      sha256 "662181fb0e414ec8f9ec6dc34e8e9a470b9a1ffd0fb653ea1f94d2c3b9475e3d"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/2.1/brume_2.1_linux_amd64.tar.gz"
    sha256 "dc4888b7a763f70df8a57f53e89fcf6ba704960e3f39e74ce91c18e93452f261"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
