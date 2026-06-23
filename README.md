# homebrew-wix

Homebrew tap for `wix`.

## Install

```bash
brew tap u8i9o/wix
brew trust u8i9o/wix
brew install --cask wix
```

처음 한 번은 `brew trust`로 탭을 신뢰해야 합니다.

## Current release

- `desktop-v0.1.6`
- `wix-0.1.6-arm64.zip`

## Notes

- This tap installs the macOS app from GitHub Releases.
- When a new release ships, update `Casks/wix.rb` with the new version, URL, and SHA256.
