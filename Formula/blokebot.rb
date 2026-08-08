# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.7.0/blokebot-v0.7.0-osx-arm64.zip"
  version "0.7.0"
  sha256 "311440d59254f0db92b71611fedaef40bc24b6c92fb33a5c637862a892fcbc0b"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.7.0", output
  end
end
