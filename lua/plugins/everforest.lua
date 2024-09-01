return {
	--[[ /**{
    "mellow-theme/mellow.nvim",
    lazy = false,
    name = "mellow",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "mellow"
    end
  }]]

  "neanias/everforest-nvim",
  version = false,
  lazy= false,
  priority = 1000,
  config = function ()
    require("everforest").setup({

    })
   vim.cmd([[colorscheme everforest]])
 end,
}
