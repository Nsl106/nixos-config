{
  wayland.windowManager.hyprland.settings.bind = [
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
  ];
}
