{inputs, pkgs, ... }: 

{

programs.hyprland = {
	enable = true; 
	};

services = { 
 xserver = { 
   enable = false;
   xkb.layout = "us"; 
  };

 greetd = { 
   enable = true; 
   vt = 2; 
   settings = { 
     default_session = { 
         user = "chen"; 
	 command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
	 };
	};
     };
 };
}
