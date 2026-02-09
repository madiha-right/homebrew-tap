cask "madsterm" do
  version "0.2.2"
  sha256 "8a40600fbaf357f69db68108a44c66863605ba25589291c3a8cc15b90f65364f"

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
