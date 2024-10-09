-- kymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
vim.cmd [[ inoremap jj <ESC>]]

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

lvim.keys.insert_mode["<C-j>"] = "<Esc>:m .+1<CR>==i"
lvim.keys.insert_mode["<C-k>"] = "<Esc>:m .-2<CR>==i"


-- lvim.keys.insert_mode["<A-l>"] = "<Right>"
-- lvim.keys.insert_mode["<A-h>"] = "<Left>"
-- lvim.keys.insert_mode["<A-j>"] = "<Down>"
-- lvim.keys.insert_mode["<A-k>"] = "<Up>"

vim.cmd [[ nmap <C-"> Bxi"<Esc>Exi"<Esc>]]
vim.cmd [[ nmap <C-'> Bxi'<Esc>Exi'<Esc>]]
vim.cmd [[ nmap <tab> V><Esc>]]
vim.cmd [[ nmap <s-tab> V<<Esc>]]
vim.cmd [[ vmap <tab> >gv]]
vim.cmd [[ vmap <s-tab> <gv]]

vim.cmd [[ map L $]]
vim.cmd [[ map H 0]]
vim.cmd [[ map <Space>\ ggVG]]
vim.cmd [[ nmap <CR> o<Esc>]]
vim.cmd [[ nnoremap n nzzzv]]
vim.cmd [[ nnoremap N Nzzzv]]
vim.cmd [[ nnoremap j jzz]]
vim.cmd [[ nnoremap k kzz]]

-- 快速分屏
-- lvim.keys.normal_mode['sl'] = ':set splitright<CR>:vsplit<CR>'
-- lvim.keys.normal_mode['sh'] = ':set nosplitright<CR>:vsplit<CR>'
-- lvim.keys.normal_mode['sj'] = ':set splitright<CR>:split<CR>'
-- lvim.keys.normal_mode['sk'] = ':set nosplitright<CR>:split<CR>'

-- 保存时用suda写入
lvim.keys.normal_mode['<A-s>'] = ':SudaWrite<CR>'

-- 一键编译/运行/编译运行
lvim.keys.normal_mode['<F4>'] = ':w<CR> | :AsyncTask file-run-debug<CR>'
lvim.keys.normal_mode['<F5>'] = ':w<CR> | :AsyncTask file-run<CR>'
lvim.keys.normal_mode['<f6>'] = ':AsyncTask project-build-config<CR>'
lvim.keys.normal_mode['<f7>'] = ':AsyncTask project-create<CR>'
lvim.keys.normal_mode['<f8>'] = ':AsyncTask project-debug-run<CR>'
lvim.keys.normal_mode['<f9>'] = ':AsyncTask project-build-run<CR>'

-- -- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false

-- edit a default keymapping
-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["D"] = { ":lua require('neogen').generate()<CR>", "Generate Doc" }
lvim.builtin.which_key.mappings["o"] = { ":SymbolsOutline<CR>", "SymbolsOutline" }
lvim.builtin.which_key.mappings[","] = { ":BufferLineCyclePrev<CR>", "bufferprev" }
lvim.builtin.which_key.mappings["."] = { ":BufferLineCycleNext<CR>", "buffernext" }

-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }
