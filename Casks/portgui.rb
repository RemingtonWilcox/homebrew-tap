cask "portgui" do
  version "0.1.1"
  sha256 "aa556eeec80983c5d78f682e58fff3c8868d0ff037c1ced05919a695353a7b2d"

  url "https://github.com/RemingtonWilcox/portgui/releases/download/v#{version}/PortGUI_#{version}_aarch64.dmg"
  name "PortGUI"
  desc "Lightweight macOS app for monitoring and managing dev processes and ports"
  homepage "https://github.com/RemingtonWilcox/portgui"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "PortGUI.app"

  zap trash: [
    "~/Library/Application Support/com.portgui.desktop",
  ]
end
