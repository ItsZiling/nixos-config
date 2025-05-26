{inputs, pkgs, ... }: 



{

  imports = [
  	inputs.home-manager.nixosModules.home-manager
  ];


  # Home Manager
  
  home-manager = { 
     extraSpecialArgs = { inherit inputs; };
     users.chen = import inputs.self.outputs.home.default;
	};

}     
