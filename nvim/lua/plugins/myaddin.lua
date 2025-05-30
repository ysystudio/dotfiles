-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- opts will be merged with the parent spec
    opts = {
      filesystem = {
        bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
      },
    },
  },
  -- 编辑只读文件
  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },

  -- -- 自动切换输入法
  -- {
  --   "lilydjwg/fcitx.vim",
  --   keys = { 'i', 'a', 'I', 'A', 'c', 'o', 'O' },
  -- },

  -- 现代任务系统
  {
    "skywind3000/asynctasks.vim",
    dependencies = "skywind3000/asyncrun.vim",
    cmd = { "AsyncTask", "AsyncTaskEdit" },
    lazy = true,
  },

  -- --ai completion
  -- {
  --   "tzachar/cmp-tabnine",
  --   build = "./install.sh",
  --   dependencies = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  -- },
  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
  --     {
  --       "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
  --       opts = {},
  --     },
  --     "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
  --   },
  --   config = true
  -- },

  -- You must install glow globally
  -- https://github.com/charmbracelet/glow
  -- brew install glow
  {
    "npxbr/glow.nvim",
    ft = { "markdown" },
    -- run = "yay -S glow"
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "Mythos-404/xmake.nvim",
    lazy = true,
    event = "BufReadPost xmake.lua",
    config = true,
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  },
}
