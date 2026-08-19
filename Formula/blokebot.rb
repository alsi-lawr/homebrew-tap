# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.11.1/blokebot-v0.11.1-osx-arm64.zip"
  version "0.11.1"
  sha256 "1b4c5c8a28a307e2173a01560fb379ac6add0bd7abb65fdafd16ff43c0c1dd72"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.11.1", output
  end
end
