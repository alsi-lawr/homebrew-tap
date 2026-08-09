# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.8.0/blokebot-v0.8.0-osx-arm64.zip"
  version "0.8.0"
  sha256 "524a97c85cc2d20218088b88ce9ce7afce8cf95dab7dc5ce89329267ea24483d"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.8.0", output
  end
end
