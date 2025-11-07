{
  inputs,
  pkgs,
  config,
  ...
}:

{
  imports = [
    inputs.fht-compositor.homeModules.default
    ./xwayland.nix
  ];

  programs.fht-compositor = {
    enable = true;
    settings = {
      autostart = [ ];
      env = {
        "DISPLAY" = ":0";
        "_JAVA_AWT_NONREPARENTING" = "1";
      };

      general = {
        cursor-warps = true;
        focus-new-windows = true;
        focus-follows-mouse = true;
        layouts = [
          "tile"
          "floating"
        ];
        nmaster = 1;
        mwfact = 0.5;
        inner-gaps = 10;
        outer-gaps = 20;
      };

      cursor = { inherit (config.home.pointerCursor) name size; };

      input.keyboard = {
        layout = "us";
        repeat-rate = 25;
        repeat-delay = 250;
      };

      input.touchpad = {
        acceleration-profile = "adaptive";
        scroll-method = "two-finger";
        natural-scrolling = true;
        tap-and-drag = true;
        tap-to-click = true;
        click-method = "clickfinger";
      };

      input.mouse = {
        acceleration-profile = "flat";
      };

      outputs.eDP-1 = {
        mode = "2560x1600@120";
        scale = 1;
        position.x = 0;
        position.y = 0;
        vrr = "on-demand";
      };

      decorations = {
        decoration-mode = "force-server-side";

        border = {
          thickness = 2;
          radius = 10;
          normal-color = "transparent";
        };

        shadow = {
          floating-only = true;
          sigma = 10.0;
        };
      };

      animations = {
        window-open-close = {
          curve = "ease-out-expo";
          duration = 250;
        };

        workspace-switch = {
          curve = "ease-out-expo";
          duration = 250;
        };

        window-geometry.disable = true;
      };

      keybinds = {
        Super-q = "quit";
        Super-Ctrl-r = "reload-config";
        Super-c = "close-focused-window";
        Super-f = "fullscreen-focused-window";
        Super-m = "maximize-focused-window";
        Super-Ctrl-Space = "float-focused-window";
        Super-j = "focus-next-window";
        Super-k = "focus-previous-window";

        Super-Return = {
          action = "run-command";
          arg = "wezterm";
        };
        Super-e = {
          action = "run-command";
          arg = "thunar";
        };
        Super-b = {
          action = "run-command";
          arg = "microsoft-edge";
        };

        Super-n = {
          action = "run-command";
          arg = "swaync-client -t -sw";
        };

        Super-1 = {
          action = "focus-workspace";
          arg = 0;
        };
        Super-2 = {
          action = "focus-workspace";
          arg = 1;
        };
        Super-3 = {
          action = "focus-workspace";
          arg = 2;
        };
        Super-4 = {
          action = "focus-workspace";
          arg = 3;
        };
        Super-5 = {
          action = "focus-workspace";
          arg = 4;
        };
        Super-6 = {
          action = "focus-workspace";
          arg = 5;
        };
        Super-7 = {
          action = "focus-workspace";
          arg = 6;
        };
        Super-8 = {
          action = "focus-workspace";
          arg = 7;
        };
        Super-9 = {
          action = "focus-workspace";
          arg = 8;
        };

        Super-Ctrl-1 = {
          action = "send-to-workspace";
          arg = 0;
        };
        Super-Ctrl-2 = {
          action = "send-to-workspace";
          arg = 1;
        };
        Super-Ctrl-3 = {
          action = "send-to-workspace";
          arg = 2;
        };
        Super-Ctrl-4 = {
          action = "send-to-workspace";
          arg = 3;
        };
        Super-Ctrl-5 = {
          action = "send-to-workspace";
          arg = 4;
        };
        Super-Ctrl-6 = {
          action = "send-to-workspace";
          arg = 5;
        };
        Super-Ctrl-7 = {
          action = "send-to-workspace";
          arg = 6;
        };
        Super-Ctrl-8 = {
          action = "send-to-workspace";
          arg = 7;
        };
        Super-Ctrl-9 = {
          action = "send-to-workspace";
          arg = 8;
        };

        XF86AudioRaiseVolume = {
          action = "run-command";
          arg = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+";
          allow-while-locked = true;
          repeat = true;
        };

        XF86AudioLowerVolume = {
          action = "run-command";
          arg = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-";
          allow-while-locked = true;
          repeat = true;
        };

        XF86AudioMute = {
          action = "run-command";
          arg = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          allow-while-locked = true;
          repeat = true;
        };

        XF86AudioMicMute = {
          action = "run-command";
          arg = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          allow-while-locked = true;
        };

        XF86MonBrightnessUp = {
          action = "run-command";
          arg = "brightnessctl -e4 -n2 set 5%+";
          allow-while-locked = true;
          repeat = true;
        };

        XF86MonBrightnessDown = {
          action = "run-command";
          arg = "brightnessctl -e4 -n2 set 5%-";
          allow-while-locked = true;
          repeat = true;
        };
      };

      mousebinds = {
        Super-Left = "swap-tile";
        Super-Right = "resize-tile";
        Super-Scrollup = "focus-next-workspace";
        Super-Scrolldown = "focus-previous-workspace";
      };

      rules = [
        {
          match-app-id = [
            "Steam"
            "steam_app_*"
          ];
          on-workspace = 5;
          open-on-workspace = 5;
          floating = true;
          centered = true;
          vrr = true;
        }
      ];
    };
  };
}
