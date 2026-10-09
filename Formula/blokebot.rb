# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.17.0/blokebot-v0.17.0-osx-arm64.zip"
  version "0.17.0"
  sha256 "7e0b35a10cd8ec54577f978da21e6a595ef62299a490faab8c43441a18c922a2"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.17.0", output
  end
end
