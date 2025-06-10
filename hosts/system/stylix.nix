{
  config,
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    enable = true;
    image = ./../../wallpapers/land.png;
    polarity = "dark";
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Original-Ice";
      size = 24;
    };

    fonts = {
      sizes = {
        applications = 11;
        terminal = 10;
        popups = 12;
        desktop = 11;
      };

      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };

      serif = { 
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };


      # serif = config.stylix.fonts.monospace;
      # sansSerif = config.stylix.fonts.monospace;
      # emoji = config.stylix.fonts.monospace;
    };
  };
}
