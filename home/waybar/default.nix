{
  config,
  pkgs,
  ...
}: {
  imports = [./modules];
  home.file.".config/waybar/style.css".source = ./style.css;

  programs.waybar = {
    enable = true;
    settings = {
      main = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = ["hyprland/workspaces"];
        modules-center = ["custom/song"];
        modules-right = ["pulseaudio" "memory" "disk" "cpu" "clock"];
      };
    };
  };
}
