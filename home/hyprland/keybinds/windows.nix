{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # { Mod + Shift + J } = close active window
      "$mod SHIFT, j, killactive"

      # { Mod + Shift + F } = toggle floating
      "$mod SHIFT, E, togglefloating"

      # { Mod + F } = toggle fullscreen
      "$mod, E, fullscreen"
    ];

    bindm = [
      # { Mod + LMB } = Move window
      "$mod, mouse:272, movewindow"

      # { Mod + RMB } = Resize window
      "$mod, mouse:273, resizewindow"
    ];
  };
}
