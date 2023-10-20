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
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
    --         Old text                    Command         New text
    -- --------------------------------------------------------------------------------
    --     surr*ound_words             ysiw)           (surround_words)
    --     *make strings               ys$"            "make strings"
    --     [delete ar*ound me!]        ds]             delete around me!
    --     remove <b>HTML t*ags</b>    dst             remove HTML tags
    --     'change quot*es'            cs'"            "change quotes"
    --     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    --     delete(functi*on calls)     dsf             function calls
  },
  {
    "mg979/vim-visual-multi",
  },
}
