# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.12.0/blokebot-v0.12.0-osx-arm64.zip"
  version "0.12.0"
  sha256 "cead32c408da00f136d0187d5dec75048dcf05fd60d9a2be21b8a06c99f8421c"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.12.0", output
  end
end
