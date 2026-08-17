# Hyderay Homebrew Tap

Homebrew packages for Hyderay apps.

## Notch

Notch shows live Codex CLI and Claude Code activity in the MacBook notch.

```bash
brew install --cask --no-quarantine hyderay/tap/notch
```

The `--no-quarantine` flag is currently required because release builds are
ad-hoc signed. The app and bundled `notchctl` command are installed together.
