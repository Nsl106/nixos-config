{
  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      nano = "nano -m";
      rebuild-nix = "sudo nixos-rebuild switch --flake ~/.config/nixos#desktop";
    };
  };
}
