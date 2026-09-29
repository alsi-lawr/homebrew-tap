cask "modconductor" do
  version "0.1.0"
  sha256 "f75cc0401f28bfe19d25b5add82e0cb245f8401d10c3d9de65d1028dbb589b88"

  url "https://github.com/ModConductor/ModConductor/releases/download/v0.1.0/modconductor-0.1.0-linux-x64.AppImage"
  name "Mod Conductor"
  desc "Desktop mod organiser"
  homepage "https://github.com/ModConductor/ModConductor"

  depends_on :linux

  app_image "modconductor-0.1.0-linux-x64.AppImage"
end
