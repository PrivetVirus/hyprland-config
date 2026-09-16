# Hyprland Config - v3 (Current)

This repository contains my personal Hyprland configuration.

## What's New in v3 (Latest Update)

The third iteration of this configuration focuses on stability, robust background task management, and improved window and clipboard handling.

### 🌟 Key Changes & Improvements

1. **Robust Window Management (Magic Pocket)**
   - The special workspace / scratchpad (Magic Pocket) is now bound to the 5th mouse button (`mouse:276`).
   - Upgraded to use `bindr` (trigger on release) to prevent the "drag threshold" issue where slight mouse movements would cancel the shortcut.
   - Introduced `super_magic_toggle.sh` to provide intelligent conditional toggling between floating windows and the special workspace.

2. **Keyboard-Driven Window Movement**
   - Added robust keyboard shortcuts to quickly move the active window to adjacent workspaces.
   - ⌨️ `SUPER + SHIFT + Left Arrow`: Move window to the previous workspace (`r-1`).
   - ⌨️ `SUPER + SHIFT + Right Arrow`: Move window to the next workspace (`r+1`).

3. **Clipboard History Integration**
   - Integrated `cliphist` into the autostart routine.
   - Text and image clipboard histories are now automatically tracked in the background via robust `wl-paste` watchers.
   - ⌨️ `SUPER + SPACE`: Brings up the interactive clipboard history menu (powered by `wofi`).

4. **System Stability & Panel Fixes**
   - **Waybar Crash Fix**: Removed `blueman-applet` from `exec-once` autostart. The applet was causing Waybar to instantly crash due to missing icon themes (`SNI` null pixmap bug on Wayland). Bluetooth is now managed properly via `blueman-manager` when needed, keeping the top/bottom panel completely stable.

---

### Previous Versions
- **v2**: Added fix for Nvidia hardware cursors and various visual updates.
- **v1**: Initial backup of the base Hyprland config.
