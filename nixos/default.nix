{ inputs, ... }:

{
  imports = [
    ./home-manager.nix
    ./boot-loader.nix
    ./net.nix
    ./services.nix
    ./stylix.nix
  ];
}
