{...}: {
  programs.zathura = {
    enable = true;
    extraConfig = ''
      include catppuccin-mocha
      set selection-clipboard clipboard
    '';
  };

  xdg = {
    configFile."zathura/catppuccin-mocha".source = builtins.fetchurl {
      url = "https://raw.githubusercontent.com/catppuccin/zathura/0adc53028d81bf047461bc61c43a484d11b15220/src/catppuccin-mocha";
      sha256 = "02dhha1v7kqh9v087cr9gffndpw832dfqn1sbng2scrp59rdwxgw";
    };

    mimeApps = {
      enable = true;
      defaultApplications."application/pdf" = "org.pwmt.zathura.desktop";
    };
  };
}
