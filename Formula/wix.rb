class Wix < Formula
  desc "macOS desktop client for Wix"
  homepage "https://github.com/u8i9o/wix-desktop"
  url "https://github.com/u8i9o/homebrew-wix/releases/download/v0.1.6/wix-0.1.6-arm64.zip"
  sha256 "9a8a2af8f9651093ce886bc239f628138b0c5d5dc0fd319474f2d7185e7d65a3"
  version "0.1.6"
  depends_on arch: :arm64

  def install
    app_bundle = Dir["**/wix.app"].first
    unless app_bundle
      system "/usr/bin/unzip", "-q", cached_download.to_s, "-d", buildpath
      app_bundle = Dir["**/wix.app"].first
    end

    odie "wix.app not found in the release archive" unless app_bundle

    libexec.install app_bundle

    (bin/"wix").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/wix.app/Contents/MacOS/wix" "$@"
    EOS
    chmod 0555, bin/"wix"
  end

  def caveats
    <<~EOS
      Run `wix` to launch the app.
    EOS
  end
end
