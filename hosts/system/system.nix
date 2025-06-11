{ inputs, pkgs, ... }:

{
  imports = [
    ./stylix.nix
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
  ];

  fonts = {
    packages = with pkgs; [
      noto-fonts-emoji
      noto-fonts-cjk-sans
      font-awesome
    ];
  };

  # Allows hyprlock to work and some system privileges
  security = {
    polkit.enable = true;
    pam.services.hyprlock = { };
  };

  # programs to be enable across all hosts
  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

  hardware = { 
    bluetooth.enable = true; 
    bluetooth.powerOnBoot = true;
  };

  # Services to be enabled
  services = {
    upower.enable = true;
    
    xserver = {
      enable = false;
      xkb.layout = "us";
    };

    greetd = {
      enable = true;
      vt = 2;
      settings = {
        default_session = {
          user = "chen";
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        };
      };
    };

    pipewire = {
      enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };
  };
}
