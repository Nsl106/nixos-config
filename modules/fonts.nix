{
  config,
  pkgs,
  ...
}: {
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;
    packages = with pkgs; [
      jetbrains-mono
      font-awesome
      noto-fonts-color-emoji
      open-sans
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        # Get these names from
        # $ cd /nix/var/nix/profiles/system/sw/share/X11/fonts
        # $ fc-query FontName.ttf | grep '^\s\+family:' | cut -d'"' -f2
        emoji = ["Noto Color Emoji"];
        monospace = ["JetBrains Mono"];
        sansSerif = ["Open Sans"];
      };
    };
  };
}
