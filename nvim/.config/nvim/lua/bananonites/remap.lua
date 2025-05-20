vim.g.mapleader = " "
-- Go back to filetree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move commented lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- cursor stays in place after moving line
vim.keymap.set("n", "J", "mzJ`z")

-- cursor stays in place while half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- cursor stays in place while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep paste buffer after pasting over highlighted
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copys into systemclipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>Y", "\"_d")

-- no Q never, worst place ever
vim.keymap.set("n", "Q", "<nop>")

-- switch sessions with tmux need to figure out how this works looks great.
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

-- shortcuts for quickfix, need to learn that
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>",  "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k",  "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j",  "<cmd>lprev<CR>zz")


-- replace the word that iam on
vim.keymap.set("n", "<leader>s", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]])


