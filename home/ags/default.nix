{
  config,
  pkgs,
  ...
}: {
  imports = [ ./packages.nix ];

  home.file.".config/ags" = {
    source = ./config;
    recursive = true;
  };
}

