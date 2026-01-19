{ pkgs, inputs, ... }:

{
  imports = [
    inputs.noctalia.nixosModules.default
  ];

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

    # essentials
    kitty
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    nerd-fonts.mononoki
  ];

  programs.niri.enable = true;
  services.noctalia-shell.enable = true;
  services.mpd.enable = true;
}
