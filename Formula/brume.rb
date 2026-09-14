class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.3"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.3/brume_1.3_darwin_arm64.tar.gz"
      sha256 "2d4c77b1efbbe27de51653e1ef6c38a86a031e404b9f89a8f4e6a9f996695581"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.3/brume_1.3_linux_amd64.tar.gz"
    sha256 "a5b5ecf6e6206f4860d81c8ed5a082691f04a44063e0767ba13182677c5177bd"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
