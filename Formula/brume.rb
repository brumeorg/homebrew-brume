class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.5"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.5/brume_1.5_darwin_arm64.tar.gz"
      sha256 "3b1f2584663d8b9cf8f9428663c962092bd786adc3651f1a17d36149980897ff"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.5/brume_1.5_linux_amd64.tar.gz"
    sha256 "77d214320e8b253a5f089c3929eb6564b764669d7d6af669a4814ea695c6be6b"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
