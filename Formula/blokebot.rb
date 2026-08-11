# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.9.0/blokebot-v0.9.0-osx-arm64.zip"
  version "0.9.0"
  sha256 "31b2fc2e70825892de370abc962b377c8ec1ecf4f737364a96c7d7bc539f89a7"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.9.0", output
  end
end
