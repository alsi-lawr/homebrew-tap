# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.6.2/blokebot-v0.6.2-osx-arm64.zip"
  version "0.6.2"
  sha256 "76ba31ca25294db9ea58b19a0e71d9141a8a5811e9db1029782457e6b6d66acf"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.6.2", output
  end
end
