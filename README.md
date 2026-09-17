# Hyprland Config - v4.2 (Current)

This repository contains my personal Hyprland configuration.

## What's New in v4.2 (Latest Update)

The v4.2 update focuses on reliability improvements for the Magic Pocket workflow.

### 🌟 Key Changes & Improvements

1. **Bulletproof Magic Pocket Scripts**
   - Replaced external `jq` dependencies with built-in Python parsing in `magic_pocket.sh` and `super_magic_toggle.sh`. 
   - This ensures that 5th mouse button window toggling works flawlessly out-of-the-box on any Linux distribution without requiring extra packages.

---

## What's New in v4.1

The v4.1 update focuses on a workflow enhancement for taking and annotating screenshots on the fly. 

### 🌟 Key Changes & Improvements

1. **Advanced Screenshot & Annotation Workflow**
   - Replaced the simple `hyprshot` utility with a powerful combination of `grim`, `slurp`, and `swappy`.
   - Pressing ⌨️ `SUPER + SHIFT + S` now allows selecting an area of the screen and instantly opens the capture in the **Swappy** editor, where arrows, text, and blurs can be immediately applied before saving or copying to the clipboard.

---

## What's New in v4.0

The fourth iteration introduces a major UI overhaul, replacing traditional status bars with a highly dynamic, QML-based modular shell, alongside seamless isolated VPN bypassing for music streaming.

### 🌟 Key Changes & Improvements

1. **Transition to Serpantinum Shell**
   - Completely replaced `Waybar` with **Serpantinum** (powered by Quickshell).
   - Introduced smooth QML-based animations, modern floating widgets, and a cohesive modular ecosystem (System, Network, Wallpaper, Launcher, and Music panels).
   - ⌨️ Rebound `SUPER + D`, `B`, `W`, `N`, `Z`, `A`, `M` to seamlessly trigger Serpantinum's overlay widgets.

2. **Advanced Music Integration & VPN Bypass**
   - Integrated **Yandex Music** directly into the desktop environment with MPRIS support.
   - Deployed a custom `systemd` split-tunneling service (`novpn`) using `iptables` and `iproute2`. This forces Yandex Music traffic to completely bypass the active WireGuard/AmneziaWG VPN interface, ensuring instant loading times for music and cover art without IP restrictions.
   - Added **Spun**, a standalone vinyl-styled music player, bound to ⌨️ `SUPER + ALT + M`.

---

### Previous Versions
- **v3**: Robust window management (Magic Pocket), clipboard history (cliphist + wofi), and keyboard-driven window movement binds.
- **v2**: Transition to dark blue aesthetic and Nvidia hardware cursor fixes.
- **v1**: Initial backup of the base Hyprland config.
