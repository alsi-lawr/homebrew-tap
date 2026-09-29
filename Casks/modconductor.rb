cask "modconductor" do
  version "0.1.1"
  sha256 "16a1d18df86ba12fb026c5a45f1b82c6c3709e6360191c2fd8cffe72c1e1aa8c"

  url "https://github.com/ModConductor/ModConductor/releases/download/v0.1.1/modconductor-0.1.1-linux-x64.AppImage"
  name "Mod Conductor"
  desc "Desktop mod organiser"
  homepage "https://github.com/ModConductor/ModConductor"

  depends_on :linux

  app_image "modconductor-0.1.1-linux-x64.AppImage"
end
