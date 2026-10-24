class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "2.0"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/2.0/brume_2.0_darwin_arm64.tar.gz"
      sha256 "f2f22c885d5e9580543219927ea598de81977fe001016bd242242cf80040fcb1"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/2.0/brume_2.0_linux_amd64.tar.gz"
    sha256 "7c3e3bd837aa84fca8df4de0a3a8469073cdf75ee4878bcbb5f941ce7b7991ed"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
