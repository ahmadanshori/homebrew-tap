cask "cleanori" do
  version "0.1.0"
  sha256 "c0a649ab2a22b1602556560b4d60a1ebdb41f28ce17cea9fe83f072a3f3ecd47"

  url "https://github.com/ahmadanshori/cleanori/releases/download/v#{version}/Cleanori-#{version}.zip"
  name "Cleanori"
  desc "Developer-focused disk cleaner: caches, builds, large files and a disk map"
  homepage "https://github.com/ahmadanshori/cleanori"

  depends_on macos: ">= :sequoia"

  app "Cleanori.app"

  zap trash: [
    "~/Library/Logs/Cleanori",
    "~/Library/Preferences/dev.ori.Cleanori.plist",
    "~/Library/Saved Application State/dev.ori.Cleanori.savedState",
  ]

  caveats <<~EOS
    Cleanori is not notarized by Apple, so macOS blocks it the first time you open it.
    Open it once, then go to System Settings > Privacy & Security and click "Open Anyway".

    For accurate sizes, give it Full Disk Access in
    System Settings > Privacy & Security > Full Disk Access, then reopen it.
  EOS
end
