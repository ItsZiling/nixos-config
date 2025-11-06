{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 300;
        command = "gtklock";
      }
      { 
        timeout = 600; 
        command = "systemctl suspend";
      }
    ];

    events = [
      {
        event = "before-sleep";
        command = "gtklock";
      }
    ];
  };
}
