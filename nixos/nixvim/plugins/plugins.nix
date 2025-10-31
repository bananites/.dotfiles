{

  programs.nixvim.plugins ={
    auto-save.enable = true;
     zen-mode.enable = true;
     undotree.enable = true;
     trouble.enable = true;
     fugitive.enable = true;
     web-devicons.enable = true;
     luasnip.enable = true;
     harpoon.enable = true;
     lualine.enable = true;
     autoclose.enable = true;
     comment.enable = true;


     cmp-nvim-lsp.enable = true;
     cmp-path.enable = true;
     cmp-buffer.enable = true;

     oil = {
       enable = true;
       settings = {
        columns=  [
        "permissions"
        "size"
        "mtime"
        ];
         view_options ={
      show_hidden = true;
	 };
       };
     };

     cmp = {
       enable = true;
       autoEnableSources = true;
     };
     none-ls.enable = true;
     none-ls.sources.formatting.prettier ={
       enable = true;
       disableTsServerFormatter = false;
     };

     lsp ={
       enable = true;
       servers = {
       eslint.enable = true;
       dockerls.enable = true;


       ts_ls= {
         enable= true;
	 filetypes = [
	   "javascript"
	   "typescript"
	 ];
extraOptions = {
        settings = {
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
	};
	};
	};


       lua_ls.enable = true;
       csharp_ls.enable = true;
       };
     };

     telescope= {
       enable = true;
       extensions.fzf-native.enable = true;
     };

     treesitter= {
       enable = true;
     };

   };
  }
