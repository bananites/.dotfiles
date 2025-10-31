{

 programs.nixvim = {
   enable = true;
   defaultEditor = true;
   luaLoader.enable = true;

   diagnostic.settings =  {
     virtual_lines = {
       current_line= false; 
     };
     virtual_text = true;
   };

   opts = {
     updatetime = 100;
     number= true;
     relativenumber = true;

     autoindent = true;
     autowrite = true;
     confirm = true;
     clipboard = "unnamedplus";
     cursorline = true;
     list = true;
     expandtab = true;
     shiftround = true;
     shiftwidth = 2;
     #showmode = false;
     signcolumn = "yes";
     smartcase = true;
     smartindent = true;
     tabstop = 2;

     ignorecase = true;
     incsearch = true;
     completeopt = "menu,menuone,noselect";
     wildmode = "longest:full,full";

     swapfile = false;
     undofile = true; # Build-in persistent undo
     undolevels = 10000;

     conceallevel = 2;
   };

   colorschemes.base16 = {
   enable = true;
   colorscheme= "black-metal";
   };


   clipboard.providers.xclip.enable = true;


 };

}
