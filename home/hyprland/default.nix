{pkgs, ...}:


{

imports = [
	./hyprland.nix
	];



	
  xdg.portal = {
    extraPortals = [pkgs.xdg-desktop-portal-hyprland];
    configPackages = [pkgs.hyprland];
  };

}
