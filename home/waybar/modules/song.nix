{pkgs, ...}: let
  script = ''
    playerctl --follow metadata --format '{{ title }} - {{ artist }}'
  '';
in {
  programs.waybar.settings.main."custom/song" = {
    format = " {}";
    max-length = 100;
    exec = pkgs.writeShellScript "songlistener" script;
  };
}
