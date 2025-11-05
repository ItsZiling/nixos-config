{
  inputs,
  pkgs,
  ...
}:

{
  fonts.packages = with pkgs; [
    noto-fonts-emoji
    noto-fonts-cjk-sans
    font-awesome
    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];
}
