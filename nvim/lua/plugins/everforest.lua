return {
  "no-clown-fiesta/no-clown-fiesta.nvim",
  version = false,
  lazy= false,
  priority = 1000,
  config = function ()
    require("no-clown-fiesta").setup({
      transparent = false,
      styles ={}
    })
   vim.cmd([[colorscheme no-clown-fiesta]])
 end,
}
