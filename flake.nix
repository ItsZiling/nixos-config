{
  description = "NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
   home-manager = {
     url = "github:nix-community/home-manager";
     inputs.nixpkgs.follows = "nixpkgs";
   };

   hyprland.url = "github:hyprwm/Hyprland";

   nur = { 
   	url = "github:nix-community/NUR";	
	inputs.nixpkgs.follows = "nixpkgs";
   };

   stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, ...} @inputs: { 
  nixosConfigurations = { 
   nixos-btw = nixpkgs.lib.nixosSystem { 
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };
    modules = [
        ./hosts/personal 
	./nixos
	]; 
      };
   };
  
  home.default = ./home; # for importing into configuration 


   # TODO for the future create a homeConfigurations for standalone builds
};
}
