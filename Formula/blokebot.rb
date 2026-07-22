# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://github.com/alsi-lawr/BlokeBot"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.1.2/blokebot-v0.1.2-osx-arm64.zip"
  version "0.1.2"
  sha256 "325a66c5a03489ee6683f8eb20f013be38c0785fc42bb1bb54ca9418473ea388"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.1.2", output
  end
end
