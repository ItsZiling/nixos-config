{ pkgs, ... }:

{
  imports = [
    ./discord.nix
    ./firefox.nix
    ./vscode.nix
    ./udiskie.nix
  ];

  home.packages = with pkgs; [
    bluez
    bluez-tools
    libgtop
    dart-sass
    wl-clipboard
    gvfs
    gtksourceview3
    libchamplain_libsoup3
    brightnessctl
    pavucontrol
    playerctl
    spotify

    jdk
    prismlauncher
  ];
}
