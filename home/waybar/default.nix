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
        modules-left = ["hyprland/workspaces" "hyprland/mode" "wlr/taskbar"];
        modules-center = ["sway/window" "custom/song"];
        modules-right = ["disk" "cpu" "temperature" "clock"];
      };
    };
  };
}
