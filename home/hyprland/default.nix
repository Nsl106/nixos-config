{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./keybinds.nix
    ./keyboard.nix
    ./mouse.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    settings.general.layout = "dwindle";
  };
}
