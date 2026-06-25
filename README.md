# homebrew-wix

Homebrew tap for `wix`.

## Install

```bash
brew tap u8i9o/wix
brew install wix
```

If Homebrew asks to trust the tap, run:

```bash
brew trust u8i9o/wix
```

## What it does

- Downloads the public release ZIP from this tap repository.
- Installs `wix.app` under Homebrew-managed paths.
- Adds a `wix` command that launches the app.

## Current release

- `v0.1.6`

## Update flow

When a new release is published to this tap repository, the formula updates automatically.
If needed, you can also run `.github/workflows/update-formula.yml` manually.
