cask "madsterm" do
  version "0.2.3"
  sha256 "848c41111a6c089497785b9e84eb360b186ebfe5ef0cac47804547f08e269ad7"

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
