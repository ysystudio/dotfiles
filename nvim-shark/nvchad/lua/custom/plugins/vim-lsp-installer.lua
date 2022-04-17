local M = {}

M.setup_lsp = function(attach, capabilities)
   local lsp_installer = require "vim-lsp-installer"

   lsp_installer.settings {
      ui = {
         icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
         },
      },
   }

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
         settings = {},
      }
	 if server.name == "jsonls" then
	 	local jsonls_opts = require("seetings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end


      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
