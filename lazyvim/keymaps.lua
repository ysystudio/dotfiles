-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use `vim.keymap.set` instead
local map = vim.keymap.set

vim.cmd([[ inoremap jj <ESC>]])
vim.cmd([[ nmap <tab> V><Esc>]])
vim.cmd([[ nmap <s-tab> V<<Esc>]])
vim.cmd([[ vmap <tab> >gv]])
vim.cmd([[ vmap <s-tab> <gv]])

vim.cmd([[ map L $]])
vim.cmd([[ map H 0]])
vim.cmd([[ map <Space>\ ggVG]])
vim.cmd([[ nmap <cr> o<Esc>]])

-- 一键编译/运行/编译运行
-- map('n', '<f6>', '<cmd>AsyncTask project-build-config<cr>')
-- map('n', '<f7>', '<cmd>AsyncTask project-create<cr>')
map("n", "<f6>", "<cmd>AsyncTask project-debug-run<cr>")
map("n", "<f7>", "<cmd>AsyncTask project-build-run<cr>")
map("n", "<F8>", "<cmd>AsyncTask file-run-debug<cr>")
map("n", "<F9>", "<Cmd>AsyncTask file-run<cr>")

-- -- Move to window using the <ctrl> hjkl keys
-- map('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
-- map('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
-- map('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
-- map('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window', remap = true })
