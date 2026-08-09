# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.8.1/blokebot-v0.8.1-osx-arm64.zip"
  version "0.8.1"
  sha256 "09026268cc513ed6ada50d2f03467cfbf3b650bcce37035423a6d84414f87e99"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.8.1", output
  end
end
