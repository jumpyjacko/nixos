{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font.name = "mononoki Nerd Font Mono";
    font.size = 11.0;
    font.package = pkgs.nerd-fonts.mononoki;
    settings = {
      enable_audio_bell = "no";
      allow_remote_control = "yes";
      term = "screen-256color";

      cursor_trail = "2";
      cursor_trail_decay = "0.1 0.4";

      dynamic_background_opacity = "yes";
      background_opacity = "0.85";

      window_padding_width = "4";

      foreground = "#c5c8c6";
      background = "#191919";
      
      color0 = "#2b303b";
      color8 = "#65737e";
      
      color1 = "#bf616a";
      color9 = "#bf616a";
      
      color2 = "#a3be8c";
      color10 = "#a3be8c";
      
      color3 = "#ebcb8b";
      color11 = "#ebcb8b";
      
      color4 = "#8fa1b3";
      color12 = "#8fa1b3";
      
      color5 = "#b48ead";
      color13 = "#b48ead";
      
      color6 = "#96b5b4";
      color14 = "#96b5b4";
      
      color7 = "#c0c5ce";
      color15 = "#eff1f5";
    };
  };
}
