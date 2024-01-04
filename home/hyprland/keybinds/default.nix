{
  imports = [./speakers.nix ./monitors.nix ./workspaces.nix ./windows.nix];
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # { Mod + Enter } = open terminal
      "$mod, RETURN, exec, alacritty"

      # { Mod + Space } = open app launcher
      "$mod, SPACE, exec, rofi -show drun"

      # { Mod + V } = clipboard history
      "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
    ];
  };
}
