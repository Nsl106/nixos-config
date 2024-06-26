{
  config,
  pkgs,
  ...
}: {
  imports = [
#    ./hyprland
#    ./waybar
    ./ags
    ./programs
    ./packages/desktopfiles.nix
  ];

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
    video-trimmer
    cbonsai
    tty-clock
    #(callPackage ./packages/advantagescope.nix {})1
    pipes
    asciiquarium
    brightnessctl
    os-prober
  ];

  services.cliphist.enable = true;

  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
}
