{ inputs, pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles.chen = {
      extensions =
        with inputs.nur.legacyPackages.${pkgs.stdenv.hostPlatform.system}.repos.rycee.firefox-addons; [
          darkreader
          ublock-origin
        ];
    };
  };
}
