# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.11.3/blokebot-v0.11.3-osx-arm64.zip"
  version "0.11.3"
  sha256 "9d53173a1665c30d0da2f38ba78439e914f7570266df6927be63070b6ec6337d"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.11.3", output
  end
end
