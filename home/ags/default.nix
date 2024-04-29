{
  config,
  pkgs,
  ...
}: {
  home.file.".config/ags" = {
    source = ./config;
    recursive = true;
  };

  home.packages = with pkgs; [
    ags
    libdbusmenu-gtk3
  ];
}

