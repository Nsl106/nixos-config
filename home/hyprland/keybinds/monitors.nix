{
  wayland.windowManager.hyprland.settings.bind = [
    # { Mod + F8 } = increase monitor brightness
    "$mod, F8, exec, ddccontrol -r 0x10 -W +10 dev:/dev/i2c-10"
    # { Mod + F7 } = decrease monitor brightness
    "$mod, F7, exec, ddccontrol -r 0x10 -W -10 dev:/dev/i2c-10"
  ];
}
