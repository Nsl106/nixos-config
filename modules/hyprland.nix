{
  config,
  pkgs,
  ...
}: {
  # Screen sharing
  services.pipewire.enable = true;

  programs.hyprland.enable = true;

  # Brightness control, I think brightnessctl will work better though
  services.ddccontrol.enable = true;

  # Something for ags media player
  services.gvfs.enable = true;
}