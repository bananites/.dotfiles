vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- set autosave
vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"},{
  pattern = "*",
  callback  = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})
--save undo history
vim.opt.undofile = true

-- decrease update time 
 vim.opt.smartcase = true
vim.opt.ignorecase = true

-- offset of cursor to button
vim.opt.cursorline = true
vim.opt.scrolloff = 10

--line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

vim.diagnostic.config({
  update_in_insert = true,


})
