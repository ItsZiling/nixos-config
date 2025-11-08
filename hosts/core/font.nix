{
  inputs,
  pkgs,
  ...
}:

{
  fonts.packages = with pkgs; [
    noto-fonts-color-emoji
    noto-fonts-cjk-sans
    font-awesome
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    maple-mono.NF
  ];
}
