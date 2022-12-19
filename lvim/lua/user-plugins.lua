-- Additional Plugins
lvim.plugins = {

  -- -- 编辑只读文件
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

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require('symbols-outline').setup()
    end

  },

}
