cask "notch" do
  version "1.0.2"
  sha256 "7535a24e0b61c9bd6ee2d4611640c4d6261e42e0c89713d1a60f55d0ab686ca1"

  url "https://github.com/hyderay/notch/releases/download/v#{version}/Notch-v#{version}-macOS.zip",
      verified: "github.com/hyderay/notch/"
  name "Notch"
  desc "Show Codex CLI and Claude Code status in the MacBook notch"
  homepage "https://github.com/hyderay/notch"

  depends_on macos: :sonoma

  app "Notch.app"
  binary "#{appdir}/Notch.app/Contents/MacOS/notchctl"

  zap trash: [
    "~/.notch",
    "~/Library/Preferences/com.wanquanlin.notch.plist",
  ]
end
