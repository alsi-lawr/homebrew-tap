# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.7.1/blokebot-v0.7.1-osx-arm64.zip"
  version "0.7.1"
  sha256 "4a8133d0524429ac06a280e07e09e6595ba311cf9103d454aa2739c8a882a7ce"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.7.1", output
  end
end
