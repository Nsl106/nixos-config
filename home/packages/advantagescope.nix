{
  lib,
  appimageTools,
  fetchurl,
}:
appimageTools.wrapType2 {
  name = "advantagescope";
  src = fetchurl {
    url = "https://github.com/Mechanical-Advantage/AdvantageScope/releases/download/v3.1.0/advantagescope-linux-x64-v3.1.0.AppImage";
    hash = "sha256-idsDg5gMlCVvH1f+njgUSk7uOWhMC5yum6RBYQi3aac=";
  };
  extraPkgs = pkgs: with pkgs; [];
}
