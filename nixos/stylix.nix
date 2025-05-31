{inputs, pkgs, ...}:


{ 
	imports = [
		inputs.stylix.nixosModules.stylix
	];

	stylix { 
	  enable = true; 
	  cursor = { 
	    package = pkgs.bibata-cursors;
	    name = "Bibata-Original-Ice";
	  };

{
