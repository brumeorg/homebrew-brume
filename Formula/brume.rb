class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.6"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.6/brume_1.6_darwin_arm64.tar.gz"
      sha256 "f2d64dc2af9a15e1d770ffcaeff33cadc2f29669a4046643da581c3b41f2b2da"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.6/brume_1.6_linux_amd64.tar.gz"
    sha256 "3191d12d1af94d06345d371a1f9284ec928b26199825c0cf886cd605648e16ae"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
