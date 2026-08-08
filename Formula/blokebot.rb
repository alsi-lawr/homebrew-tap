# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.7.0/blokebot-v0.7.0-osx-arm64.zip"
  version "0.7.0"
  sha256 "4bcc75e5f72d5216b68ea80f224885295ce21a7409b6f3e7f5920b9cee29213b"
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
