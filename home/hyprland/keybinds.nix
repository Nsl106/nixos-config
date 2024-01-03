{
  config,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # { Mod + Enter } = open terminal
      "$mod, RETURN, exec, kitty"

      # { Mod + Shift + C } = close active window
      "$mod SHIFT, c, killactive"

      # { Mod + Space } = open app launcher
      "$mod, SPACE, exec, rofi -show drun"

      # { Mod + [1..9] } = open workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"

      # { Mod + Shift + [1..9] } = move window to workspace
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"

      # { Mod + S } = Special workspace for spotify
      "$mod, S, togglespecialworkspace, spotify"
      "$mod SHIFT, S, movetoworkspace, special:spotify"
    ];

    bindm = [
      # { Mod + LMB } = Move window
      "$mod, mouse:272, movewindow"

      # { Mod + RMB } = Resize window
      "$mod, mouse:273, resizewindow"
    ];
  };
}
