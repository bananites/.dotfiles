{config,  pkgs, nixvim, ...}:
{
  imports = [
   nixvim.homeModules.nixvim 
   ./keymappings.nix
  ];

	home.username = "bananites";
	home.homeDirectory = "/home/bananites";
	home.stateVersion = "25.05";

  # windowManager
  home.file.".config/i3/config".source = ./configs/i3/config;

  
  home.packages = with pkgs; [

    kitty
    firefox
    flameshot
    thunderbird
    arandr
    lazygit

    xclip
    tmux
    ripgrep
    nixpkgs-fmt
    
    fzf
    tree-sitter
    fd

  ];

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
    vscodevim.vim
    ];
  };

  programs.bash.enable = true;

  programs.zsh ={
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    setOptions = [
    "AUTO_CD"
    ];


    plugins = [
        # Autocompletions
        {
          name = "zsh-autosuggestions";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-autosuggestions";
            rev = "v0.7.1";
            hash = "sha256-vpTyYq9ZgfgdDsWzjxVAE7FZH4MALMNZIFyEOBLm5Qo=";
          };
        }
        # Completion scroll
        {
          name = "zsh-completions";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-completions";
            rev = "0.35.0";
            hash = "sha256-GFHlZjIHUWwyeVoCpszgn4AmLPSSE8UVNfRmisnhkpg=";
          };
        }
        # Highlight commands in terminal
        {
          name = "zsh-syntax-highlighting";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-syntax-highlighting";
            rev = "0.8.0";
            hash = "sha256-iJdWopZwHpSyYl5/FQXEW7gl/SrKaYDEtTH9cGP7iPo=";
          };
        }
      ];

  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch --flake ~/Workspace/.dotfiles/nixos";

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
      alias w="~/Workspace"
      alias n="~/Workspace/.dotfiles/nixos/"
      alias die="shutdown now"
      alias mk="mkdir"
      alias c="clear"
      alias gc="git commit -m"
      alias ga="git add ."
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
    defaultEditor = true;
    luaLoader.enable = true;


    colorschemes.base16 ={
    enable = true;
    colorscheme= "black-metal";
#    colorscheme= "ashes";
    };

    clipboard.providers.xclip.enable = true;
    plugins ={
      lualine.enable = true;
      telescope= {
        enable = true;
        extensions.fzf-native.enable = true;
      };
      comment.enable = true;
      treesitter= {
        enable = true;
      };

    };
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

