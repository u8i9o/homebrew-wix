# homebrew-wix

Homebrew tap for `wix`.

## Install

```bash
brew tap u8i9o/wix
brew install --cask wix
```

이 tap은 공개 릴리스 ZIP를 내려받는 방식입니다.

## Current release

- `v0.1.6`
- `wix-0.1.6-arm64.zip`

## Notes

- This tap installs the macOS app from GitHub Releases.
- When a new release is published in this tap repository, the cask updates automatically.
- For manual updates, use the `workflow_dispatch` input on `.github/workflows/update-cask.yml`.
