{
  config,
  pkgs,
  ...
}: {
  home.file.".config/ags" = {
    source = ./config;
    recursive = true;
  };
}

