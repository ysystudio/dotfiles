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
    requires = "skywind3000/asyncrun.vim",
    cmd = { "AsyncTask", "AsyncTaskEdit" },
    opt = true,
  },
  --ai completion
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
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
}
