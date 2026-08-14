# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.10.2/blokebot-v0.10.2-osx-arm64.zip"
  version "0.10.2"
  sha256 "52bf260c36dd624c18ee73fc8b01ac89385995a5a481309df07f4da02a44cccc"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.10.2", output
  end
end
