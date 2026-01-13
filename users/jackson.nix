{ pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.jackson = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "networkmanager" "docker" ];
    shell = pkgs.zsh;
  };
}
