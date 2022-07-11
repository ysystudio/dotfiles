-- Additional Plugins
lvim.plugins = {
  -- 多光标
  {
    "mg979/vim-visual-multi",
    keys = "<C-n>",
  },
  -- 编辑只读文件
  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },
  -- 自动切换输入法
  {
    "lilydjwg/fcitx.vim",
    keys = { 'i', 'a', 'I', 'A', 'c', 'o', 'O' },
  },

  -- -- markdown 预览
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && npm install",
  --   ft = "markdown",
  --   config = function()
  --     vim.g.mkdp_auto_start = 1
  --   end,
  -- },

  -- 现代任务系统
  {
    "skywind3000/asynctasks.vim",
    requires = "skywind3000/asyncrun.vim",
    cmd = { "AsyncTask", "AsyncTaskEdit" },
    opt = true,
  },

  -- ai auto complementary
  -- {
  --   "github/copilot.vim",
  --   config = function()
  --     vim.g.copilot_assume_mapped = true
  --   end,
  -- },
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  -- indentation guides for every line
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "|"
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
      vim.g.indent_blankline_show_current_context_indent = true
      vim.g.indent_blankline_show_current_context = true

    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },

  {
    "danymat/neogen",
    config = function()
      require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  },

  {
    "phaazon/hop.nvim",
    branch = 'v1', -- optional but strongly recommended
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "t", ":HopChar1<cr>", { silent = true })
      -- vim.api.nvim_set_keymap("n", "T", ":HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "T", ":HHopChar2<cr>", { silent = true })
    end,
  },
}
