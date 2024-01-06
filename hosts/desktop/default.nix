{
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../modules/system.nix

    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # Bootloader
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.loader.grub = {
    devices = ["nodev"];
    efiSupport = true;
    enable = true;
    # set $FS_UUID to the UUID of the EFI partition
    useOSProber = true;
    extraEntries = ''
      menuentry "Windows" {
          	insmod chain
          	insmod ntfs
          	set root=(hd1,1)
          	chainloader +1
      }
    '';
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];
  networking.hostName = "desktop"; # Define your hostname.

  fileSystems."/home/nolanl/data" = {
    device = "/dev/nvme0n1p2";
    fsType = "ntfs3";
  };
}
