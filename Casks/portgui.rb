cask "portgui" do
  version "0.1.0"
  sha256 "a8a77d9cec4c44166222decccdfb6b5d79b5ab82ce4109d06ef6141540afe1a6"

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
