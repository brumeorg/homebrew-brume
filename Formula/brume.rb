class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "2.3"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/2.3/brume_2.3_darwin_arm64.tar.gz"
      sha256 "c52c161f38fdf61940d7c1950b07d95b9582cf621413a32478f3655562c988c5"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/2.3/brume_2.3_linux_amd64.tar.gz"
    sha256 "a3b170eea2df6157e686fa0cbefbfede8f39fe9ca0397adb5c6dbc6a52e92485"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
