# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.12.2/blokebot-v0.12.2-osx-arm64.zip"
  version "0.12.2"
  sha256 "a5c9616ae9cc719ad6e2566a50ee7868b5dcca1d9924d2c320a1f174fc46dd82"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.12.2", output
  end
end
