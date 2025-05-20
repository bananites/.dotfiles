require("bananonites.remap")
require("bananonites.lazy")


local augroup = vim.api.nvim_create_augroup
local bananonitesGroup = augroup('bananonites', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- checks for whitespace at the end of the file
autocmd({"BufWritePre"}, {
    group = bananonitesGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- changes themes depending on filetype
autocmd('BufEnter', {
    group = bananonitesGroup,
    callback = function()
        if vim.bo.filetype == "zig" then
            --vim.cmd.colorscheme("tokyonight-night")
        else
            --vim.cmd.colorscheme("rose-pine")
        end
    end
})

autocmd('LspAttach', {
    group = ThePrimeagenGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    end
})


-- still need that banner, but one day!
--vim.g.netrw_browse_split = 0
--vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
