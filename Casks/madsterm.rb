cask "madsterm" do
  version "0.2.0"
  sha256 "7d1a7c3134581f98377b8e26d1d7a4f9050a3f088fa966d13b47a9711ebbba43"

  url "https://github.com/madiha-right/madsterm/releases/download/v#{version}/Madsterm_#{version}_aarch64.dmg"
  name "Madsterm"
  desc "Fast, keyboard-driven terminal emulator with file explorer and git diff viewer"
  homepage "https://github.com/madiha-right/madsterm"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Madsterm.app"

  zap trash: [
    "~/Library/Preferences/com.madsterm.app.plist",
    "~/Library/Application Support/com.madsterm.app",
  ]
end
