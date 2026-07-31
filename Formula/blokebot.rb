# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.5.0/blokebot-v0.5.0-osx-arm64.zip"
  version "0.5.0"
  sha256 "b5377279399a12d94b79375344d99a7753835cff3092d0f6499e9c7db064fb47"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.5.0", output
  end
end
