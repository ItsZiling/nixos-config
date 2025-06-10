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
    base16Scheme = {
      base00 = "#16161E";
      base01 = "#1A1B26";
      base02 = "#2F3549";
      base03 = "#444B6A";
      base04 = "#787C99";
      base05 = "#787C99";
      base06 = "#CBCCD1";
      base07 = "#D5D6DB";
      base08 = "#F7768E";
      base09 = "#FF9E64";
      base0A = "#E0AF68";
      base0B = "#41A6B5";
      base0C = "#7DCFFF";
      base0D = "#7AA2F7";
      base0E = "#BB9AF7";
      base0F = "#D18616";
    };
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
