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
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.loader.grub = {
    devices = ["nodev"];
    efiSupport = true;
    enable = true;
    # set $FS_UUID to the UUID of the EFI partition
    useOSProber = true;
    
    extraEntries = ''
      menuentry "Windows" {
        insmod part_gpt
        insmod fat
        insmod search_fs_uuid
        insmod chain
        search --fs-uuid --set=root 9E7D-7AA9
        chainloader /EFI/Microsoft/Boot/bootmgfw.efi
      }
    '';
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];
  networking.hostName = "framework"; # Define your hostname.

  #fileSystems."/home/nolanl/data" = {
  #  device = "/dev/nvme0n1p2";
  #  fsType = "ntfs3";
  #};
}
