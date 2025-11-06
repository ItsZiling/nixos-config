{
  inputs,
  pkgs,
  ...
}:

{

  services.upower.enable = true;
  services.blueman.enable = true;

  services.printing = {
    enable = true;
    drivers = with pkgs; [
      gutenprint
      canon-cups-ufr2
      cnijfilter2
      cups-filters
    ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
  };

  services.xserver = {
    enable = false;
    xkb.layout = "us";
  };

  # services.greetd = {
  #   enable = true;
  #   settings.default_session = {
  #     user = "chen";
  #     # command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
  #     command = "Hyprland";
  #   };
  # };

  services.xserver.displayManager.gdm.enable = true;
  # I need sounds
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    wireplumber.enable = true;
    jack.enable = true;

  };

  # Security is good
  security = {
    polkit.enable = true;
    pam.services.hyprlock = { };
  };

}
