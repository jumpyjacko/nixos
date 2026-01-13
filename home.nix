{ pkgs, inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    inputs.noctalia.homeModules.default

    ./modules/atuin.nix
    ./modules/kitty.nix
    ./modules/lazydocker.nix
    ./modules/lazygit.nix
    ./modules/mpd.nix
    ./modules/zathura.nix
  ];

  home.packages = with pkgs; [
    mpv
    rmpc
    anki
    legcord
    zathura
    nautilus
    obs-studio

    prismlauncher
    waywall

    inkscape
    blender
    krita

    fcitx5-mozc-ut
  ];

  programs.zen-browser.enable = true;
  programs.kitty.enable = true;
  programs.zsh.enable = true;

  xdg.configFile = {
    "niri".source = "${inputs.dotfiles}/.config/niri";
    "noctalia".source = "${inputs.dotfiles}/.config/noctalia";
    "rmpc".source = "${inputs.dotfiles}/.config/rmpc";
    "tmux".source = "${inputs.dotfiles}/.config/tmux";
    "waywall".source = "${inputs.dotfiles}/.config/waywall";
  };

  home.file.".zshrc".source = "${inputs.dotfiles}/.zshrc";

  home.stateVersion = "25.11";
}
