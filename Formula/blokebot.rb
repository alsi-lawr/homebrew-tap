# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.13.2/blokebot-v0.13.2-osx-arm64.zip"
  version "0.13.2"
  sha256 "71fef8a489b1bdd176d27cb0070caf47936a02719fe5a3fb6ce0f595b31a7841"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.13.2", output
  end
end
