{ config, lib, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # base packages
    less
    man
    gnugrep
    gawk
    file
    which
    tree
    lsof
    polkit
    unzip
    gnutar
    gzip
    bzip2
    xz

    # shell
    inputs.nixvim-config.packages.${system}.default
    vim
    git
    curl
    wget
    tmux

    # modern shell replacements
    ripgrep
    bat
    zoxide
    fzf
    eza

    # shell extras
    atuin
    fastfetch
    lazygit
    lazydocker

    # toolchains
    python3
    nodejs
    rustup
    gcc
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
}
