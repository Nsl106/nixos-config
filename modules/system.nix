{
  config,
  pkgs,
  ...
}: {
  imports = [./audio.nix];

  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Phoenix";

  users.users.nolanl = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"]; # Enable ‘sudo’ for the user.
  };

  boot.loader.grub.configurationLimit = 10;
  nix.settings.auto-optimise-store = true;

  # Perform garbage collection weekly to maintain low disk usage
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 1w";
  };

  # Keyboard remapping
  services.keyd = {
    enable = true;
    keyboards.default.settings.main = {
      capslock = "esc";
    };
  };

  nixpkgs.config.allowUnfree = true;
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    git
  ];

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05";
}
