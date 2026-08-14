# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.10.0/blokebot-v0.10.0-osx-arm64.zip"
  version "0.10.0"
  sha256 "e92eb83cb19830e792d9223c967cd23428cbf8c9dc4712dc23d4a79f37017be5"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.10.0", output
  end
end
