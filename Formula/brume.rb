class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "1.1"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/1.1/brume_1.1_darwin_arm64.tar.gz"
      sha256 "207f294a82a64705fa6993d1b744f12e4f3755eac7958c734c9730f6910862e9"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/1.1/brume_1.1_linux_amd64.tar.gz"
    sha256 "2933186b368ab71b1602e3eef174b0182c3ac3965aa8e7785428679635754252"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
