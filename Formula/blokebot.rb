# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.13.5/blokebot-v0.13.5-osx-arm64.zip"
  version "0.13.5"
  sha256 "9badde91838c4037facfaecb2897aef06c418fc213d5d66fefe08fdc447f22c7"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.13.5", output
  end
end
