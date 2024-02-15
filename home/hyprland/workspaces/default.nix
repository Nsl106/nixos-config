{
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "1, on-created-empty:[] ~/.config/hypr/scripts/one"
    ];
  };

  home.file.".config/hypr/scripts" = {
    source = ./scripts;
    recursive = true;
    executable = true;
  };
}
