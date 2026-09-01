# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.13.3/blokebot-v0.13.3-osx-arm64.zip"
  version "0.13.3"
  sha256 "5553013cc061f0aef5074408623999506095f1c07a74182cc90ad251da66ebf7"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.13.3", output
  end
end
