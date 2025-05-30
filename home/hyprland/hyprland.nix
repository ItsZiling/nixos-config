
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
	   "$mainMod" = "SUPER";
	   "$terminal" = "kitty";
	   "$browser" = "firefox";


	   exec-once = [
        	"dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        	"systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
		];


	    bind = [ 
	        "$mainMod, RETURN, exec, $terminal"
		"$mainMod, B, exec, $browser"
		"$mainMod, C, killactive"
 		"$mainMod, M, exit"
		"$mainMod, V, togglefloating"
		"$mainMod, R, exec, $menu"
 		"$mainMod, P, pseudo"
 		"$mainMod, J, togglesplit" 

 		"$mainMod, left, movefocus, l"
 		"$mainMod, right, movefocus, r"
 		"$mainMod, up, movefocus, u"
 		"$mainMod, down, movefocus, d"

		"$mainMod, 1, workspace, 1"
		"$mainMod, 2, workspace, 2"
		"$mainMod, 3, workspace, 3"
		"$mainMod, 4, workspace, 4"
		"$mainMod, 5, workspace, 5"
		"$mainMod, 6, workspace, 6"
		"$mainMod, 7, workspace, 7"
		"$mainMod, 8, workspace, 8"
		"$mainMod, 9, workspace, 9"
		"$mainMod, 0, workspace, 10"

 		"$mainMod SHIFT, 1, movetoworkspace, 1"
 		"$mainMod SHIFT, 2, movetoworkspace, 2"
 		"$mainMod SHIFT, 3, movetoworkspace, 3"
 		"$mainMod SHIFT, 4, movetoworkspace, 4"
 		"$mainMod SHIFT, 5, movetoworkspace, 5"
 		"$mainMod SHIFT, 6, movetoworkspace, 6"
 		"$mainMod SHIFT, 7, movetoworkspace, 7"
 		"$mainMod SHIFT, 8, movetoworkspace, 8"
 		"$mainMod SHIFT, 9, movetoworkspace, 9"
 		"$mainMod SHIFT, 0, movetoworkspace, 10"

 		"$mainMod, mouse_down, workspace, e+1"
 		"$mainMod, mouse_up, workspace, e-1"
		];

	    bindm = [
	     	"$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
		];

            bindel = [ 
	    	",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
		",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
		",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
		",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
		",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
		",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
		];

	    env = [
        	"NIXOS_OZONE_WL, 1"
        	"NIXPKGS_ALLOW_UNFREE, 1"
        	"XDG_CURRENT_DESKTOP, Hyprland"
        	"XDG_SESSION_TYPE, wayland"
        	"XDG_SESSION_DESKTOP, Hyprland"
		];

	};
   }; 
}
