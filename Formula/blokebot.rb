# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.7.3/blokebot-v0.7.3-osx-arm64.zip"
  version "0.7.3"
  sha256 "bd7166dd6d75fecdbbb8342119d2ef196e8af05d9354627315f3a144d9ba9556"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.7.3", output
  end
end
