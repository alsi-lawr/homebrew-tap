# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.12.1/blokebot-v0.12.1-osx-arm64.zip"
  version "0.12.1"
  sha256 "a317424f61a66c3825fdca46503c0b02403d98e1504b06a6b2b51c8d3330f325"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.12.1", output
  end
end
