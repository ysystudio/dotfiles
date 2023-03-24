-- Additional Plugins
lvim.plugins = {

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

  -- 现代任务系统
  {
    "skywind3000/asynctasks.vim",
    dependencies = "skywind3000/asyncrun.vim",
    cmd = { "AsyncTask", "AsyncTaskEdit" },
    lazy = true,
  },
  --ai completion
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  -- outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require('symbols-outline').setup()
    end

  },
  -- You must install glow globally
  -- https://github.com/charmbracelet/glow
  -- brew install glow
  {
    "npxbr/glow.nvim",
    ft = {"markdown"}
    -- run = "yay -S glow"
  },
  -- {
  --   "tpope/vim-surround",
  --   -- make sure to change the value of `timeoutlen` if it's not triggering correctly,
  --   -- see https://github.com/tpope/vim-surround/issues/117
  --   setup = function()
  --      vim.o.timeoutlen = 500
  --   end
  -- },
}
