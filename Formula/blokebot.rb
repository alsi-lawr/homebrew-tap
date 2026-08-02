# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.5.1/blokebot-v0.5.1-osx-arm64.zip"
  version "0.5.1"
  sha256 "cf049a603a5dbd31194d55fb8eca7fa7225853e7e10fb5a00638e18f08bb725d"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.5.1", output
  end
end
