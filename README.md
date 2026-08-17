# Hyderay Homebrew Tap

Homebrew packages for Hyderay apps.

## Notch

Notch shows live Codex CLI and Claude Code activity in the MacBook notch.

```bash
brew install --cask hyderay/tap/notch
xattr -dr com.apple.quarantine /Applications/Notch.app
```

The second command is currently required because release builds are ad-hoc
signed. The app and bundled `notchctl` command are installed together.
