{inputs, pkgs, ... }: 

{

programs.hyprland = {
	enable = true; 
	portalPackage  = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;


	};

services = { 
 xserver = { 
   enable = true;
   xkb.layout = "us"; 
  };
 };



}
