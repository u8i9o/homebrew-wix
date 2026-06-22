cask "wix" do
  version "0.1.6"
  sha256 "b3d58c56b4ceef879b9871d28eebb7e77a3128c9a4c2632c2327c5a83cd6158d"

  url "https://github.com/u8i9o/wix-desktop/releases/download/desktop-v#{version}/wix-#{version}-arm64.zip",
      verified: "github.com/u8i9o/wix-desktop/"
  name "wix"
  desc "macOS desktop client for Wix"
  homepage "https://github.com/u8i9o/wix-desktop"

  app "wix.app"

  zap trash: [
    "~/Library/Application Support/wix-desktop",
    "~/Library/Preferences/com.wix.desktop.plist",
    "~/Library/Saved Application State/com.wix.desktop.savedState",
  ]
end
