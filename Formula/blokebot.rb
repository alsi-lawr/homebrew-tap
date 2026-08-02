# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.5.2/blokebot-v0.5.2-osx-arm64.zip"
  version "0.5.2"
  sha256 "d1443c6ebb9532dfaa073f74530b4cffbf8e68710963104c10c33028a95fe324"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.5.2", output
  end
end
