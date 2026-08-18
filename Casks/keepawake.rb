cask "keepawake" do
  version "1.0.0"
  sha256 "10cafa53872f7063a4d1bb7d4919724a888b0b8271d58a252576aabce51c720c"

  url "https://github.com/fxderico/keep-awake/releases/download/v#{version}/wakeup.dmg"
  name "Keep Awake"
  desc "Menu bar utility to prevent system or display sleep"
  homepage "https://github.com/fxderico/keep-awake"

  depends_on macos: ">= :ventura"

  app "KeepAwake.app"

  zap trash: [
    "~/Library/Preferences/one.fede.keepawake.plist",
  ]

  caveats <<~EOS
    Keep Awake is ad-hoc signed, not notarized (no paid Apple Developer
    account behind this tap). Homebrew Cask installs bypass Gatekeeper
    quarantine automatically, so no extra step should be needed — but if
    macOS still complains on first launch, run:
      xattr -cr "#{appdir}/KeepAwake.app"
  EOS
end
