# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.16.0/blokebot-v0.16.0-osx-arm64.zip"
  version "0.16.0"
  sha256 "2002c7b9878a55e018a4d2e72ca03d9821e2dfe0bd9932ff7e2e788fccf1e428"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.16.0", output
  end
end
