cask "madsterm" do
  version "0.2.1"
  sha256 "0b2837bda3b90bfa9846ce77445c98b969195e96f3f7396863b5f06493ffe87e"

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
