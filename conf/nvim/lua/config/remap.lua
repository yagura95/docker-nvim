vim.g.mapleader = " "
vim.opt.guicursor = ""

vim.opt.errorbells = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.hlsearch = true 
vim.opt.incsearch = true

vim.opt.cursorline = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.scrolloff = 8

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

vim.opt.swapfile = false

vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd('BufEnter', { command = [[ set formatoptions-=cro ]] })
