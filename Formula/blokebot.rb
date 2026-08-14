# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.10.1/blokebot-v0.10.1-osx-arm64.zip"
  version "0.10.1"
  sha256 "e9558870b82f394d09486abf3371b21f50aa819e4655d62148bf3b8da37b0a5a"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.10.1", output
  end
end
