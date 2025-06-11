{
  # required dependencies (there are other require ones but
  # were enabled elsewhere)
  imports = [ inputs.ags.homeManagerModules.default ];
  home.packages = with pkgs; [
    bluez
    bluez-tools
    libgtop
    dart-sass
    wl-clipboard
    gvfs
    gtksourceview3
    libsoup3

    # optional packages
    brightnessctl
  ];

  programs.ags = { 
    enable = true; 
  }
}
