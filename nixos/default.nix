{inputs, ... }: 

{
imports = [

./flatpak.nix
./home-manager.nix
./boot-loader.nix
./net.nix
./services.nix
./stylix.nix
inputs.stylix.nixosModules.stylix
];



}
