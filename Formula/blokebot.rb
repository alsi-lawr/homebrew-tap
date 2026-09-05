# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.14.1/blokebot-v0.14.1-osx-arm64.zip"
  version "0.14.1"
  sha256 "d4b436cb43dfb5c1c0e2ad46c21be7bdb92032b2183e499b17227dfca76234d4"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.14.1", output
  end
end
