# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.7.2/blokebot-v0.7.2-osx-arm64.zip"
  version "0.7.2"
  sha256 "87e4011a10945285a71b16de85385e54bde9cb2344ea7aae88b0538490f66670"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.7.2", output
  end
end
