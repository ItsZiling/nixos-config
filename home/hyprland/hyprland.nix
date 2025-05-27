
{pkgs, lib, config, inputs, ...} : 


{ 

  wayland.windowManager.hyprland = { 

  	enable = true;
	systemd = { 
	   enable = true; 
	};
	xwayland.enable = true; 
	package = pkgs.hyprland;

	settings = { 
	"$terminal" = "kitty";
	"$browser" = "firefox";
	"$mainMod" = "SUPER"; 

	    bind = [ 

	        "$mainMod, Q, exec, $terminal"
		"$mainMod, B, exec, $browser"
		"$mainMod, C, killactive"

		];



	};



   }; 






}
