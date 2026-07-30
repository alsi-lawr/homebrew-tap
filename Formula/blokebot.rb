# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.3.0/blokebot-v0.3.0-osx-arm64.zip"
  version "0.3.0"
  sha256 "a8a7d109582825b493e3801737dadd9adde27e80e47dcb924a689b046ce7df88"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.3.0", output
  end
end
