-- REMAPS
local Remap    = require("config.utils")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap     = Remap.nmap

-- Splits navigation
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-h>", "<C-w>h")

-- Delete instead of cut to clipboard 
-- (just doest it to different register)
nnoremap("x", "\"9x")
vnoremap("x", "\"9x")

-- Auto complete 
inoremap("{", "{}<ESC>i")
inoremap("[", "[]<ESC>i")
inoremap("(", "()<ESC>i")

vnoremap("{", "A }<ESC>gvI{ <ESC>")
vnoremap("[", "A ]<ESC>gvI[ <ESC>")
vnoremap("(", "A )<ESC>gvi( <ESC>")


-- File explorer
nnoremap("<leader>e", ":Ex<CR>")

-- Telescope 
nnoremap("<leader>f", ":Telescope find_files<CR>")
nnoremap("<leader>b", ":Telescope buffers<CR>")
nnoremap("<leader>g", ":Telescope live_grep<CR>")

-- Prettier
nnoremap("<leader>p", "=G<CR>")
