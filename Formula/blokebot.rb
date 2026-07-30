# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://blokegeezington.com/blokebot/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.4.2/blokebot-v0.4.2-osx-arm64.zip"
  version "0.4.2"
  sha256 "90269857e0ff142e9bbb2b21a8021da9a8daa5840f6b63a4deb1f35b982bc4e7"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.4.2", output
  end
end
