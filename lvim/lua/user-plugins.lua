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
  -- markdown 预览
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },

  -- 现代任务系统
  {
    "skywind3000/asynctasks.vim",
    requires = "skywind3000/asyncrun.vim",
    cmd = { "AsyncTask", "AsyncTaskEdit" },
    opt = true,
  },

  -- ai auto comp
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_assume_mapped = true
    end,
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
    "tmhedberg/SimpylFold",
  }
  -- -- code runner
  -- {
  --   'CRAG666/code_runner.nvim',
  --   requires = 'nvim-lua/plenary.nvim',

  --   require('code_runner').setup {
  --     term = {
  --       position = "vert",
  --       size = 15,
  --       mode = "startinsert"
  --     },
  --     filetype = {
  --       java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
  --       python = "python -U",
  --       typescript = "deno run",
  --       rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
  --     },
  --     project = {
  --       ["~/deno/example"] = {
  --         name = "ExapleDeno",
  --         description = "Project with deno using other command",
  --         file_name = "http/main.ts",
  --         command = "deno run --allow-net"
  --       },
  --       ["~/cpp/example"] = {
  --         name = "ExapleCpp",
  --         description = "Project with make file",
  --         command = "make buid & cd buid/ & ./compiled_file"
  --       },
  --     },
  --   },

  -- },



}