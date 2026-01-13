{ config, lib, pkgs, inputs, ... }: {
  imports = [
    ./programs.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
