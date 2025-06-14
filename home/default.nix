{ config, pkgs, ... }:

{

  imports = [
    ./tui
    ./core
    ./programs
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "chen";
  home.homeDirectory = "/home/chen";

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (pkgs: true);
    };

  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.
  home.packages = with pkgs; [ ];
  home.file = { };

  home.sessionVariables = { };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
