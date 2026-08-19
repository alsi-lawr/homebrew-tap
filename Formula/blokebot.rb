# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.11.0/blokebot-v0.11.0-osx-arm64.zip"
  version "0.11.0"
  sha256 "7749448380c9b13196fc0da520ad6ffdba3a3491cfded05371f078fdc8a53448"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.11.0", output
  end
end
