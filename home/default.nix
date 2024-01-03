{
  config,
  pkgs,
  ...
}: {
  imports = [./hyprland ./programs];

  home.username = "nolanl";
  home.homeDirectory = "/home/nolanl";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    spotify
    hyprpaper
    jetbrains.idea-ultimate
    kitty
    rofi
    neofetch
    lsof
    xorg.xev
    prismlauncher
    xorg.xeyes
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {};
  };

  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
}
