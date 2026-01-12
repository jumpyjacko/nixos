{ inputs, config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # core
    libnotify
    xdg-utils
    polkit_gnome
    xwayland
    xwayland-satellite

    # desktop utiliities
    ripdrag
    wev
    wl-clipboard
    slurp
    grim
    swayimg
    brightnessctl
    nwg-look
    qt6Packages.qt6ct

    # shell and windowing
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    gpu-screen-recorder
    cliphist
    matugen
    cava
    evolution-data-server

    niri

    # essentials
    kitty
  ];
}
