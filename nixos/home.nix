{config,  pkgs, nixvim, ...}:
{
  imports = [
   nixvim.homeModules.nixvim 
  ];

	home.username = "bananites";
	home.homeDirectory = "/home/bananites";
	home.stateVersion = "25.05";
	programs.bash ={
		enable = true;
	};

  # windowManager
#  home.file.".config/i3/config".source = ./configs/i3/config;

  
  home.packages = with pkgs; [

    kitty
    firefox
    flameshot
    nautilus
    thunderbird
    arandr

    tmux
    ripgrep
    nixpkgs-fmt

  ];



  programs.zsh ={
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    setOptions = [
    "AUTO_CD"
    ];


  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch";
  };
  history.size = 10000;

    oh-my-zsh= {
      enable = true;
      plugins = [ "git" "dirhistory" "history" ];
      theme = "trapd00r";
    };

        initContent = ''
      source <(ng completion script)

      if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='vim'
      else
        export EDITOR='nvim'
      fi

      alias hx="helix"
      alias w="~/Workspaces"
      alias die="shutdown now"
      alias mk="mkdir"
      alias c="clear"
      alias gc="git commit -m"
      alias ga="git add"
      alias gs="git status"
      alias gd="git diff"
      alias gp="git push"
      alias gpl="git pull"
      alias pac="sudo pacman"
      alias nv="nvim"
      alias vim="nvim"
      alias vi="nvim"
    '';
  };


  programs.nixvim = {
    enable = true;
    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
  };

    programs.git = {
      enable = true;
      userName = "Bananites";
      userEmail = "bananites@bananites";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
}

