{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # { Mod + Shift + C } = close active window
      "$mod SHIFT, c, killactive"

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
