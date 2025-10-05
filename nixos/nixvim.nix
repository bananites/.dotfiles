{
 programs.nixvim = {

   enable = true;
   defaultEditor = true;
   luaLoader.enable = true;

   opts = {
     number= true;
     relativenumber = true;
   };

   colorschemes.base16 = {
   enable = true;
   colorscheme= "black-metal";
  #colorscheme= "ashes";
   };


   clipboard.providers.xclip.enable = true;


   plugins ={
     web-devicons.enable = true;
     luasnip.enable = true;
     harpoon.enable = true;
     oil.enable = true;
     lualine.enable = true;
     cmp-nvim-lsp.enable = true;
     cmp-path.enable = true;
     cmp-buffer.enable = true;

     cmp = {
       enable = true;
       autoEnableSources = true;
     };
     lsp ={
       enable = true;
       servers = {
       ts_ls.enable= true;
       lua_ls.enable = true;
       csharp_ls.enable = true;
       

       };
     };

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

}
