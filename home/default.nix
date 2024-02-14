{
  config,
  pkgs,
  ...
}: {
  imports = [./hyprland ./waybar ./programs ./packages/desktopfiles.nix];

  home.username = "nolanl";
  home.homeDirectory = "/home/nolanl";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    spotify
    hyprpaper
    jetbrains.idea-ultimate
    rofi
    neofetch
    lsof
    xorg.xev
    (prismlauncher.override {
      withWaylandGLFW = true;
    })
    xorg.xeyes
    wl-clipboard
    xorg.xev
    hyprpaper
    obs-studio
    xdg-desktop-portal-hyprland
    video-trimmer
    linuxKernel.packages.linux_zen.v4l2loopback
    cbonsai
    tty-clock
    insomnia
    (callPackage ./packages/advantagescope.nix {})
  ];

  services.cliphist.enable = true;

  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
}
