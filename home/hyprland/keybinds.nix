{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # Volume / Media Keys
      ", XF86AudioRaiseVolume, exec, pamixer --increase 5"
      ", XF86AudioLowerVolume, exec, pamixer --decrease 5"
      ", XF86AudioMute, exec, pamixer --toggle-mute"
      ", XF86AudioPlay, exec, playerctl play-pause"

      # { Mod + Shift + Left/Right Arrow } = next/previous song
      "$mod SHIFT, Right, exec, playerctl next"
      "$mod SHIFT, Left, exec, playerctl previous"

      # { Mod + Left/Right Arrow } = skip/go back 5 seconds
      "$mod, Right, exec, playerctl position 5+"
      "$mod, Left, exec, playerctl position 5-"

      # { Mod + Enter } = open terminal
      "$mod, RETURN, exec, kitty"

      # { Mod + Shift + C } = close active window
      "$mod SHIFT, c, killactive"

      # { Mod + Space } = open app launcher
      "$mod, SPACE, exec, rofi -show drun"

      # { Mod + [0..9] } = open workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # { Mod + Shift + [0..9] } = move window to workspace
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"

      # { Mod + S } = Special workspace for spotify
      "$mod, S, togglespecialworkspace, spotify"
      "$mod SHIFT, S, movetoworkspacesilent, special:spotify"
    ];

    bindm = [
      # { Mod + LMB } = Move window
      "$mod, mouse:272, movewindow"

      # { Mod + RMB } = Resize window
      "$mod, mouse:273, resizewindow"
    ];
  };
}
