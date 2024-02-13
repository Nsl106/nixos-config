{
  wayland.windowManager.hyprland.settings.bind = [
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

    # { Mod + O } = special workspace for spotify
    "$mod, o, togglespecialworkspace, spotify"
    "$mod SHIFT, o, movetoworkspacesilent, special:spotify"

    # { Mod + TSRN } = move focus
    "$mod, t, movefocus, l"
    "$mod, s, movefocus, r"
    "$mod, r, movefocus, u"
    "$mod, n, movefocus, d"

    # { Mod + Shift + TSRN } = move workspace between monitors
    "$mod SHIFT, t, movecurrentworkspacetomonitor, l"
    "$mod SHIFT, s, movecurrentworkspacetomonitor, r"
    "$mod SHIFT, r, movecurrentworkspacetomonitor, u"
    "$mod SHIFT, n, movecurrentworkspacetomonitor, d"
  ];
}
