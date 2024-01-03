{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userName = "Nolan Locke";
    userEmail = "nolan.s.locke@gmail.com";
  };
}
