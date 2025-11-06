{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    envExtra = ''
      export EDITOR="nvim"
      export TERMINAL="wezterm"
    '';

    oh-my-zsh = { 
      enable = true; 
      theme = "clean"; 
      plugins = [];
    };
  };
}
