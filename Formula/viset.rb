# Generated with JReleaser 1.25.0

class Viset < Formula
  desc "Reproducible browser screenshots and animations as code"
  homepage "https://github.com/getviset/Viset"
  url "https://github.com/getviset/Viset/releases/download/v0.1.0/viset-v0.1.0-osx-arm64.zip"
  version "0.1.0"
  sha256 "0357014c11c2e115c0aebaf5045db2cee149b7f39fb38254cffa3badc1d2f765"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/viset" => "viset"
  end

  test do
    output = shell_output("#{bin}/viset --version")
    assert_match "0.1.0", output
  end
end
