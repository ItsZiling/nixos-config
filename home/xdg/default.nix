{ pkgs, ... }:

{
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps = {
      enable = true;
    };

    portal = {
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
      configPackages = [ pkgs.hyprland ];
    };

    userDirs = {
      enable = true;
      desktop = "$HOME/Desktop";
      documents = "$HOME/Documents";
      download = "$HOME/Downloads";
      pictures = "$HOME/Pictures";
      music = "$HOME/Music";
      videos = "$HOME/Videos";
    };
  };
}
