{ inputs, pkgs, ... }:

{
  imports = [
    ./home-manager.nix
    ./boot-loader.nix
    ./net.nix
    ./services.nix
    ./stylix.nix
  ];

  environment.systemPackages = with pkgs; [
    nixfmt-rfc-style
    wget
    zip
    unzip
  ];
}
