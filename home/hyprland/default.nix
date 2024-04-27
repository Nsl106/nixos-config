{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./keybinds
    ./workspaces
    ./windows.nix
    ./keyboard.nix
    ./mouse.nix
    ./defaultbackground.nix
    ./monitors.nix
    ./autostart.nix
    ./hyprpaper.nix
    ./touchpad.nix
    ./packages.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
  };
}
