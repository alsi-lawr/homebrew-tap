# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.11.4/blokebot-v0.11.4-osx-arm64.zip"
  version "0.11.4"
  sha256 "e58fb53fd9512b5155555be8b96f15d067bb38b94df9fb009a024de879436c54"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.11.4", output
  end
end
