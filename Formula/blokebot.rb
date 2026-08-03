# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.6.3/blokebot-v0.6.3-osx-arm64.zip"
  version "0.6.3"
  sha256 "46923bbf2fe345dfac0fefbc57f647b2942d196f8c2bf21fb29295cb158a0fe9"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.6.3", output
  end
end
