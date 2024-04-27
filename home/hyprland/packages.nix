{
  home.packages = with pkgs; [
    xdg-desktop-portal-hyprland
    linuxKernel.packages.linux_zen.v4l2loopback
  ];
}