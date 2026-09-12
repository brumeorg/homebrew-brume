class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.2"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.2/brume_1.2_darwin_arm64.tar.gz"
      sha256 "c50f4a3805637a4e04ae618999eafe64152eb5d10a591876b58d3ea0de541c8d"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.2/brume_1.2_linux_amd64.tar.gz"
    sha256 "581dc3542d76908a912271c72ebb125332638f23616e946013c0352dad1fe966"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
