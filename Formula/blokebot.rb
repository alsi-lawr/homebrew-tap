# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.14.0/blokebot-v0.14.0-osx-arm64.zip"
  version "0.14.0"
  sha256 "4e2a290241504ede673c9cc5e62968d2ec2fa5d53cfacbe6963c7b3356c20da6"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.14.0", output
  end
end
