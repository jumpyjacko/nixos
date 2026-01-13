{ config, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "${config.home.homeDirectory}/Music";
    extraConfig = ''
      restore_paused "yes"
      auto_update "yes"
      audio_output {
        type            "pipewire"
        name            "PipeWire Sound Server"
      }
      audio_output {
       type            "fifo"
       name            "Visualizer feed"
       path            "/tmp/mpd.fifo"
       format          "44100:16:2"
       buffer_before_play "20%"
      }
    '';
  };
  services.mpd-mpris.enable = true;
}
