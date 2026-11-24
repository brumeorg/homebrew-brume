class Brume < Formula
  desc "Brume is a pseudonymisation tool, that allows you to use coherent data and production data with GDPR compliance"
  homepage "https://github.com/brumeorg/Brume"
  version "2.4"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/brumeorg/Brume/releases/download/2.4/brume_2.4_darwin_arm64.tar.gz"
      sha256 "1584f22bd4a9cf31560c3e80072c16828b323c609b25d2487e87a12ea644e779"
    end
  end
  on_linux do
    url "https://github.com/brumeorg/Brume/releases/download/2.4/brume_2.4_linux_amd64.tar.gz"
    sha256 "be5a2ba96cb0120437080e31a04b74a87a54534c46c0aa406a2f56ad46f22e01"
  end
  def install
    bin.install "brume"
  end
  test do
    system "#{bin}/brume", "--version"
  end
end
