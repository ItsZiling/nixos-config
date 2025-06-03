# TODO create an option to disable this module in case we want to use home manager as standalone


{inputs, pkgs, ... }: 

{

  imports = [
  	inputs.home-manager.nixosModules.home-manager
  ];


  # Home Manager
  
  home-manager = { 
     extraSpecialArgs = { inherit inputs; };
     users.chen = import inputs.self.outputs.home.default;
     backupFileExtension = "home-backup";
     };

  programs.fish.enable = true;

}     
