class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.4"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.4/brume_1.4_darwin_arm64.tar.gz"
      sha256 "42a5a69089aad0fd0de0b7eeac467c936c18c850cefad6459cc0ebc0c773c381"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.4/brume_1.4_linux_amd64.tar.gz"
    sha256 "f2d45fe92a1d28938795da8498c074776714df06e8d0c16cfb012aa6ed344cfc"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
