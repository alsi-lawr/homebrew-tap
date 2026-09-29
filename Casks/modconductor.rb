cask "modconductor" do
  version "0.1.0"
  sha256 "2d73d3abb1bdb4c65106534503af5381cd4c4843fa359904f65d7dc6764f07e3"

  url "https://github.com/ModConductor/ModConductor/releases/download/v0.1.0/modconductor-0.1.0-linux-x64.AppImage"
  name "Mod Conductor"
  desc "Desktop mod organiser"
  homepage "https://github.com/ModConductor/ModConductor"

  depends_on :linux

  app_image "modconductor-0.1.0-linux-x64.AppImage"
end
