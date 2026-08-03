# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.6.1/blokebot-v0.6.1-osx-arm64.zip"
  version "0.6.1"
  sha256 "a622d3bcb77ca1ed90c3d667680c5a34a29bb41e19f9c8666082a2a0c6e5540b"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.6.1", output
  end
end
