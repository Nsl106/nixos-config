{
  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      nano = "nano -m";
      rebuild-nix = "sudo nixos-rebuild switch --flake ~/.config/nixos#desktop";
      cbonsai = "cbonsai --live --infinite";
      tty-clock = "tty-clock -ctnB -C 5 -f \"%A, %b %d\"";
    };
  };
}
