cask "portgui" do
  version "0.1.0"
  sha256 "84750f93bd2945ea08489b16216d18e500dbc4e6ebf831196183559ca069de38"

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
