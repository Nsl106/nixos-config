{
  wayland.windowManager.hyprland.settings.exec-once = [
    "wl-paste --watch cliphist store"
    "waybar"
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
  ];
}
