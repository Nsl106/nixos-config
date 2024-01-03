{
  config,
  pkgs,
  ...
}: {
  hardware.pulseaudio.enable = true;
  nixpkgs.config.pulseaudio = true;

  environment.systemPackages = with pkgs; [
    pavucontrol
    playerctl
    pamixer
  ];
}
