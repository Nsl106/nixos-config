{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./keybinds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    settings = {
      input = {
        kb_layout = "us";

        follow_mouse = true;

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "rgba(33ccffee)";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "dwindle";
      };
    };
  };
}
