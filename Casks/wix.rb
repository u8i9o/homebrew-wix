cask "wix" do
  version "0.1.6"
  sha256 "9a8a2af8f9651093ce886bc239f628138b0c5d5dc0fd319474f2d7185e7d65a3"

  url "https://github.com/u8i9o/homebrew-wix/releases/download/v#{version}/wix-#{version}-arm64.zip",
      verified: "github.com/u8i9o/homebrew-wix/"
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
