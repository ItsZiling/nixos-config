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
      options = "--delete-older-than 7-days";
    };
  };

  # package to be install on all hosts
  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    wget
    zip
    unzip
  ];

  # stuff to be enable across all hosts
  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

  services = {
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
    };
  };
}
