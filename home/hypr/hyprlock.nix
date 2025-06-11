{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = false;
        no_fade_in = true;
        no_fade_out = false;
        grace = 0;
      };

      background = [
        {
          path = "/home/chen/nixos-config/wallpapers/night.png";
          blur_passes = 3;
          blur_size = 5;
        }
      ];

      input-field = [
        {
          size = "100, 50";
          position = "0, -100";
          dots_center = true;
          fade_on_empty = false;
          outline_thickness = 5;
          shadow_passes = 3;
          placeholder_text = "Enter Password";
        }
      ];

      label = [
        {
          monitor = "";
          text = "$TIME12";
          font_size = 50;
          font_family = "JetBrains Mono";
          position = "0, 100";
          halign = "center";
          valign = "center";
        }

        { 
          monitor = ""; 
          text = ''cmd[update:1000] echo $(date +"%a, %d %b")'';
          font_size = 30;
          font_family = "JetBrains Mono";
          position = "0, 0";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
