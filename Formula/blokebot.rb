# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.11.2/blokebot-v0.11.2-osx-arm64.zip"
  version "0.11.2"
  sha256 "a4e71ee96118839766931849fdbcaceb1b480d20c1256ab272edd2b9b9315a0e"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.11.2", output
  end
end
