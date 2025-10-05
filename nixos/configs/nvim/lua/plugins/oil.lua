return {
  "stevearc/oil.nvim",

  dependencies = {"nvim-tree/nvim-web-devicons"},

  config = function()
    local oil = require("oil")
    oil.setup{
      columns = {"icon"},
      view_options = {
        show_hidden = true;
      },

      open_split = "none",
    }

    vim.keymap.set("n", "-","<CMD>Oil<CR>", {})
  end,
}
