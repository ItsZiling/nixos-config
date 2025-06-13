{
  services.swaync = {
    enable = true;

    settings = {
      positionX = "right";
      positionY = "top";
      layer-shell = true;
      layer = "overlay";
      control-center-layer = "overlay";
      cssPriority = "user";
      control-center-positionX = "none";
      control-center-positionY = "none";
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      controlcenter-margin-left = 10;
      control-center-height = 500;
      control-center-width = 450;
      fit-to-screen = false;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      notification-icon-size = 64;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      notification-window-width = 500;
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;

      widgets = [
        "title"
        "dnd"
        "volume"
        "mpris"
        "notifications"
      ];

      widget-config = {
        title = {
          text = "Notifications Center";
          clear-all-button = true;
          button-text = "Clear All";
        };

        volume = {
          label = "󰕾";
        };

        mpris = {
          image-size = 100;
        };

        dnd = {
          text = "Do Not Disturb";
        };

        label = {
          max-lines = 5;
          text = "Notifications Center";
        };
      };
    };
  };
}
