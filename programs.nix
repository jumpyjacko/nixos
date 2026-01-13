{ pkgs, inputs, ... }:

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
    fastfetch
    lazygit
    lazydocker

    # toolchains
    python3
    nodejs
    rustup
    gcc
  ];
}
