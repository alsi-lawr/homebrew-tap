# Generated with JReleaser 1.25.0

class Blokebot < Formula
  desc "Free, open-source Twitch bot and dashboard"
  homepage "https://www.blokebot.com/"
  url "https://github.com/alsi-lawr/BlokeBot/releases/download/v0.15.0/blokebot-v0.15.0-osx-arm64.zip"
  version "0.15.0"
  sha256 "cea0cfe7cad534d3f24a866d024bdc57bf250afcb3e984adf52b5286711e0067"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/blokebot" => "blokebot"
  end

  test do
    output = shell_output("#{bin}/blokebot --version")
    assert_match "0.15.0", output
  end
end
