# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.4.0/blokebot-v0.4.0-osx-arm64.zip"
  version "0.4.0"
  sha256 "cde5a86b668a6fa18ef9f1c7c05ea28f45f663af22a4738982a56d1ea86a2bb6"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.4.0", output
  end
end
