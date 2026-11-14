class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "2.2"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/2.2/brume_2.2_darwin_arm64.tar.gz"
      sha256 "ea59d1dd9a27a89f5a938f86bfcae0bd69eec7a28c0c9db44b35cd8ba168b96f"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/2.2/brume_2.2_linux_amd64.tar.gz"
    sha256 "0c29b70851ae4f51d9507d447b7599063021dbe181d62d3f0cc9d6e05ed9942b"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
