{
  config,
  pkgs,
  ...
}: {
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Arizona/Phoenix";

  users.users.nolanl = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"]; # Enable ‘sudo’ for the user.
  };

  nixpkgs.config.allowUnfree = true;

  programs.bash.shellAliases = {
    rebuild-nix = "sudo nixos-rebuild switch --flake ~/.config/nixos#desktop";
    format-nix = "( cd ~/.config/nixos && nix fmt )";
  };

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    git
  ];

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05";
}
