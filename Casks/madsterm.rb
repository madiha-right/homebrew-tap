cask "madsterm" do
  version "0.1.0"
  sha256 "56b9d8d955c2b0778a87a7aaec4d9073cb72fba406170eef6cf10dc33eb309e9"

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
