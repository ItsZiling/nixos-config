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
      jetbrains-mono
      nerd-fonts.jetbrains-mono
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
    blueman.enable = true;

    printing = {
      enable = true;
      drivers = with pkgs; [
        gutenprint
        canon-cups-ufr2
        cnijfilter2
        cups-filters
      ];
    };

    avahi = {
      enable = true;
      nssmdns4 = true;
    };

    xserver = {
      enable = false;
      xkb.layout = "us";
    };

    greetd = {
      enable = true;
      settings = {
        default_session = {
          user = "chen";
          command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        };
      };
    };

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true; 
      alsa.support32Bit = true;
      wireplumber.enable = true;
      jack.enable = true;
    };
  };

  xdg = {
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
      configPackages = [ pkgs.hyprland ];
    };
  };
}
