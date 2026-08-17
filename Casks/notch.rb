cask "notch" do
  version "1.0.3"
  sha256 "a78000ace04da36d769dfa1a0b5a7c6276a1ea2d9d4e630a6f01d80a4e32869c"

  url "https://github.com/hyderay/notch/releases/download/v#{version}/Notch-v#{version}-macOS.zip",
      verified: "github.com/hyderay/notch/"
  name "Notch"
  desc "Show Codex CLI and Claude Code status in the MacBook notch"
  homepage "https://github.com/hyderay/notch"

  depends_on macos: :sonoma

  app "Notch.app"
  binary "#{appdir}/Notch.app/Contents/MacOS/notchctl"

  caveats <<~EOS
    Notch is currently ad-hoc signed. Before the first launch, remove the
    quarantine attribute:

      xattr -dr com.apple.quarantine "#{appdir}/Notch.app"
  EOS

  zap trash: [
    "~/.notch",
    "~/Library/Preferences/com.wanquanlin.notch.plist",
  ]
end
