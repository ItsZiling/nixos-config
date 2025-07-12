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
      base00 = "#171D23";
      base01 = "#1D252C";
      base02 = "#28323A";
      base03 = "#526270";
      base04 = "#B7C5D3";
      base05 = "#D8E2EC";
      base06 = "#F6F6F8";
      base07 = "#FBFBFD";
      base08 = "#F7768E";
      base09 = "#FF9E64";
      base0A = "#B7C5D3";
      base0B = "#9ECE6A";
      base0C = "#89DDFF";
      base0D = "#7AA2F7";
      base0E = "#BB9AF7";
      base0F = "#BB9AF7";
    };
    image = ./../wallpapers/land.png;
    polarity = "dark";
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Original-Ice";
      size = 24;
    };

    opacity = {
      applications = 0.9;
      popups = 0.8;
      desktop = 1.0;
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
