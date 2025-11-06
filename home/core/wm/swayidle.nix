{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 300;
        command = "gtklock";
      }
      { 
        timeout = 900; 
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
