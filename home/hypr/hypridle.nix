{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatcher dpms on";
      };

      listener = [
        {
          timeout = 60;
          on-timeout = "brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }
        {
          timeout = 80;
          on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0"; 
          on-resume = "brightnessctl -rd rgb:kbd_backlight";
        }
        {
          timeout = 80; 
          on-timeout = "hyprlock";
        }
        { 
          timeout = 120; 
          on-timeout = "hyprctl dispatch dpms off"; 
          on-resume = "hyprctl dispatch dpms on";
        }
        { 
          timeout = 900; 
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };
}
