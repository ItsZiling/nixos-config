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
    enable = false; # false for now, havent finish configuring it
    settings = { 
      cursor = {inherit (config.home.pointerCursor) name size;};
    };
  }
}
