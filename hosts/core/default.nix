{
  inputs,
  config,
  pkgs,
  lib,
  ...
}:

{

  imports = [
    ./services.nix
    ./font.nix
  ];

  # clean system
  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  # package to be install on all hosts
  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    wget
    zip
    unzip
    xrandr
    gtklock
  ];

  # programs to be enable across all hosts
  programs = {
    zsh.enable = true;
    hyprland.enable = true;
    dconf.enable = true;
  };

  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };

  security = {
    polkit.enable = true;
    pam.services.gtklock.text = lib.readFile "${pkgs.gtklock}/etc/pam.d/gtklock";
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
    configPackages = [ pkgs.hyprland ];
  };
}
