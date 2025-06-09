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
          "custom/powermenu"
        ];

        "hyprland/mode" = { 
           "format" = " {}";
        };
      }
    ];
  };
}
