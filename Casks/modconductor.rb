cask "modconductor" do
  version "0.2.0"
  sha256 "adc85d7a0ada7684e11c7281ad5fcd5906cd28a2c4e5af4dfd2e698ebfd3ede7"

  url "https://github.com/ModConductor/ModConductor/releases/download/v0.2.0/modconductor-0.2.0-linux-x64.AppImage"
  name "Mod Conductor"
  desc "Desktop mod organiser"
  homepage "https://github.com/ModConductor/ModConductor"

  depends_on :linux

  app_image "modconductor-0.2.0-linux-x64.AppImage"
end
