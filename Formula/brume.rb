class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.0"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.0/brume_1.0_darwin_arm64.tar.gz"
      sha256 "d8678995ea6bf33861163399e71690f2660cffacf273b54612db2055210d543b"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.0/brume_1.0_linux_amd64.tar.gz"
    sha256 "27083cdd73bdda4d370a3aea4c40e53cad5ab8814fd5e8dd97870b2bc1a71feb"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
