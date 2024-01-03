{
  imports = [./audio.nix ./workspaces.nix ./windows.nix];
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # { Mod + Enter } = open terminal
      "$mod, RETURN, exec, kitty"

      # { Mod + Space } = open app launcher
      "$mod, SPACE, exec, rofi -show drun"
    ];
  };
}
