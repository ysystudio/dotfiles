local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- add your own keymapping
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("n", "<C-q>", ":q<cr>", opts)
keymap("n", "<S-h>" ,"0", opts)
keymap("n", "<S-l>" , "$", opts)

keymap("i", "<A-l>" , "<Right>", opts)
keymap("i", "<A-h>" , "<Left>", opts)
keymap("i", "<A-j>" , "<Down>", opts)
keymap("i", "<A-k>" , "<Up>", opts)

vim.cmd [[ nmap <C-"> Bxi"<Esc>Exi"<Esc>]]
vim.cmd [[ nmap <C-'> Bxi'<Esc>Exi'<Esc>]]
vim.cmd [[ nmap <tab> V><Esc>]]
vim.cmd [[ nmap <s-tab> V<<Esc>]]
vim.cmd [[ vmap <tab> >gv]]
vim.cmd [[ vmap <s-tab> <gv]]


vim.cmd [[ nmap <Space>/ gcc]]
vim.cmd [[ vmap <Space>/ gc]]

vim.cmd [[ map <Space>\ ggVG]]
vim.cmd [[ nmap <CR> o<Esc>]]


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)

-- Insert --
-- Press jj fast to exit insert mode 
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- 保存时用suda写入
keymap("n", "<A-s>", ":SudaWrite<CR>", opts)
-- 一键编译/运行/编译运行
keymap("n",'<F5>', ':w<CR> | :AsyncTask file-run<CR>', opts)
keymap("n",'<f4>', ':AsyncTask project-create<CR>', opts)
keymap("n",'<f6>', ':AsyncTask project-build-config<CR>', opts)
keymap("n",'<f7>', ':AsyncTask project-build<CR>', opts)
keymap("n",'<f8>', ':AsyncTask project-debug-run<CR>', opts)
keymap("n",'<f9>', ':AsyncTask project-build-run<CR>', opts)



