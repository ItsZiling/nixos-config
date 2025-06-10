{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = [
      {
        layer = "top";
        position = "top";
        height = 40;

        modules-left = [
          "hyprland/workspaces"
          "hyprland/mode"
          "hyprland/window"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "custom/recorder"
          "tray"
          "pulseaudio"
          "backlight"
          "temperature"
          "cpu"
          "memory"
          "battery"
          "network"
        ];

        "hyprland/mode" = {
          format = " {}";
        };

        "sway/workspaces" = {
          disable-scroll = true;
          all-outputs = false;
          disable-markup = false;
          format = "{icon}";
          format-icons = {
            "1" = "1 ";
            "2" = "2 ";
            "3" = "3 ";
            "4" = "4 ";
            "5" = "5 ";
            "6" = "6 ";
            "7" = "7 ";
            "8" = "8 ";
            "9" = "9 ";
            "10" = "0 ";
          };
        };

        tray = {
          icon-size = 20;
          spacing = 8;
        };

        "hyprland/window" = {
          max-length = 60;
          tooltip = false;
          # "format": "( {} )"
        };

        clock = {
          format = "{:%a %d %b - %H:%M}";
          tooltip = false;
        };

        cpu = {
          interval = 5;
          format = "︁ {}%";
          max-length = 10;
        };

        memory = {
          interval = 15;
          format = "︁ {used:0.1f}G/{total:0.1f}G";
          tooltip = false;
        };

        "custom/recorder" = {
          format = "!";
          return-type = "json";
          interval = 3;
          exec = "echo '{\"class\": \"recording\"}'";
          exec-if = "pgrep wf-recorder";
          tooltip = false;
          on-click = "killall -s SIGINT wf-recorder";
        };

        battery = {
          format = "{icon} {capacity}%{time}";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
          format-time = " ({H}h{M}m)";
          format-charging = " {icon} {capacity}% - {time}";
          format-full = " {icon} Charged";
          interval = 15;
          states = {
            warning = 25;
            critical = 10;
          };
          tooltip = false;
        };

        network = {
          format = "{icon}";
          format-alt = "︁ {ipaddr}/{cidr} {icon}";
          format-alt-click = "click-left";
          format-wifi = " {essid} ({signalStrength}%)";
          format-ethernet = "︁ {ifname}";
          format-disconnected = "⚠ Disconnected";
          tooltip = false;
        };

        pulseaudio = {
          format = "{icon:2}{volume}%";
          format-alt = "{icon:2}{volume}%";
          format-alt-click = "click-right";
          format-muted = "";
          format-icons = {
            phone = [
              " "
              " "
              " "
              " "
            ];
            default = [
              ""
              ""
              ""
              ""
            ];
          };
          scroll-step = 2;
          on-click = "pavucontrol";
          tooltip = false;
        };

        backlight = {
          format = "{icon} {percent}%";
          format-alt = "{icon}";
          format-alt-click = "click-left";
          format-icons = [
            ""
            ""
          ];
          on-scroll-up = "light -A 1";
          on-scroll-down = "light -U 1";
        };

        temperature = {
          hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
          critical-threshold = 75;
          interval = 5;
          format = "{icon} {temperatureC}°";
          tooltip = false;
          format-icons = [
            "" # Icon: temperature-empty
            "" # Icon: temperature-quarter
            "" # Icon: temperature-half
            "" # Icon: temperature-three-quarters
            "" # Icon: temperature-full
          ];
        };

      }
    ];
  };
}
