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
    rofi
    neofetch
    lsof
    xorg.xev
    prismlauncher
    xorg.xeyes
    wl-clipboard
    xorg.xev
    alacritty
    hyprpaper
  ];

  services.cliphist.enable = true;

  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      nano = "nano -m";
      rebuild-nix = "sudo nixos-rebuild switch --flake ~/.config/nixos#desktop";
    };
  };

  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
}
