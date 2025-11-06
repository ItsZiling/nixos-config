{
  inputs,
  ...
}:

{

  imports = [ inputs.fht-compositor.nixosModules.default ];

  programs = {
    dconf.enable = true; 
    fht-compositor.enable = true;
  };
}
