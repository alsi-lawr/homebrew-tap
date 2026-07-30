# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.4.1/blokebot-v0.4.1-osx-arm64.zip"
  version "0.4.1"
  sha256 "8add6eb9b973c2e44e184e3442d847eabe30a085b86ccaf37f81c43f64b46e72"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.4.1", output
  end
end
