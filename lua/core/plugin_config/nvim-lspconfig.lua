return {
	"neovim/nvim-lspconfig",
	enabled = true,
	event = "InsertEnter",
	dependencies = {
	     "hrsh7th/cmp-nvim-lsp",
	  -- "williamboman/mason.nvim",
	  -- "williamboman/mason-lspconfig.nvim",
	--   'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
	  -- LINTERS | FORMATTERS | DAP
	  local capabilities = require('cmp_nvim_lsp').default_capabilities()

	  capabilities.textDocument.foldingRange = {
	    dynamicRegistration = false,
	    lineFoldingOnly = true
	  }

	  -- LSP SETUP
	  local on_attach = function(client, bufnr)
	    -- Using default Keymaps
	    vim.api.nvim_create_autocmd("CursorHold", {
	      buffer = bufnr,
	      callback = function()
	        local opts = {
	          focusable = false,
	          close_events = { "BufLeave",
				"CursorMoved",
				"InsertEnter",
				"FocusLost" },
	          border = 'rounded',
	          source = 'always',
	          prefix = ' ',
	          scope = 'cursor',
	        }
	        vim.diagnostic.open_float(nil, opts)
	      end
	    })
	  end

	  local lsp_servers = vim.api.nvim_get_var('lsp_servers')

	  for _, lsp in ipairs(lsp_servers) do
	    require('lspconfig')[lsp.name].setup {
	      settings = lsp.settings,
	      on_attach = on_attach,
	      on_new_config = lsp.on_new_config,
	      capabilities = capabilities,
	      handlers = handlers,
	    }
	  end
	end
}
