# homebrew-tap

Personal Homebrew tap for [Keep Awake](https://github.com/fxderico/keep-awake).

## Install

```sh
brew tap fxderico/tap
brew install --cask keepawake
```

## Update

```sh
brew update
brew upgrade --cask keepawake
```

## Why this avoids the Gatekeeper quarantine prompt

Homebrew Cask downloads the DMG via `curl`, not through a browser or Mail —
those are the apps that actually set the `com.apple.quarantine` extended
attribute (via the macOS `LSQuarantine` API) on files they save. A `curl`
download never gets tagged in the first place, so there's nothing for
Gatekeeper to flag on first launch. This does **not** mean the app is
notarized or more trusted than a manual download — Keep Awake is ad-hoc
signed only (see the main repo's README) — it's purely a side effect of how
the file arrived on disk.
