return {
	'WhoIsSethDaniel/mason-tool-installer.nvim',
	enabled = true,
	event = "UIEnter",
	dependencies = {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim"
	},
	config = function()

	  -- LINTERS | FORMATTERS | DAP
	  local lsp_linters = vim.api.nvim_get_var('lsp_linters')
	  local lsp_dap = vim.api.nvim_get_var('lsp_dap')
	  local lsp_formatters = vim.api.nvim_get_var('lsp_formatters')
	  local all_lsp_tools = {}
	  for _, lsp_tool in ipairs(lsp_linters) do
	    table.insert(all_lsp_tools, lsp_tool)
	  end
	  for _, lsp_tool in ipairs(lsp_dap) do
	    table.insert(all_lsp_tools, lsp_tool)
	  end
	  for _, lsp_tool in ipairs(lsp_formatters) do
	    table.insert(all_lsp_tools, lsp_tool)
	  end

	  require('mason-tool-installer').setup(
	    {
	      ensure_installed = all_lsp_tools
	    }
	  )

	end
}
