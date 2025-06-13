{
  programs.yazi = {
    enable = true;
    settings = {
      opener.edit = [
        {
          run = "nvim \"$@\"";
          block = true;
        }
      ];
    };
  };
}
