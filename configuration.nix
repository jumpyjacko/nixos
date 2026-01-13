{ config, lib, pkgs, inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./programs.nix
    ./desktop.nix
    ./services.nix
  ];

  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;

    supportedFilesystems.ntfs = true;
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Australia/Sydney";
  i18n.defaultLocale = "en_AU.UTF-8";

  services = {
    printing.enable = true;
    libinput.enable = true;
    openssh.enable = true;
    upower.enable = true;
    power-profiles-daemon.enable = true;
    flatpak.enable = true;
    pipewire = {
      enable = true;
      pulse.enable = true;
    };
  };

  hardware.bluetooth.enable = true;
  hardware.graphics.enable = true;

  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  xdg.portal.config.common.default = "*";
  xdg.portal.enable = true;

  networking.firewall.enable = false;
  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  programs.zsh.enable = true;
  users.users.jackson = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "networkmanager" "docker" ];
    shell = pkgs.zsh;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
