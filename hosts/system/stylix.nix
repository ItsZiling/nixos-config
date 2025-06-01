{pkgs, ...}: 

{


	imports = { 
		inputs.stylix.nixosModules.stylix
	}

	stylix = { 
	  enable = true;
	  image = ./../home/hyprland/wallpapers/night.png;
	  polarity = "dark";
	  cursor = { 
	    package = pkgs.bibata-cursors;
	    name = "Bibata-Original-Ice";
	    size = 24;
	  };
	};

}
