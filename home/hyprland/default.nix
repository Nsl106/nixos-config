{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./keybinds
    ./windows.nix
    ./keyboard.nix
    ./mouse.nix
    ./defaultbackground.nix
    ./monitors.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
  };
}
