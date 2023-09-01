return {
	"williamboman/mason-lspconfig.nvim",
	enabled = true,
	event = "VeryLazy",
	dependancies = {
	  "williamboman/mason.nvim",
	},
	config = function()

	  -- NOTE: This is mentioned in the init.lua
	  local lsp_servers = vim.api.nvim_get_var('lsp_servers')
	  -- Convert lsp_servers to a table of strings
	  local server_names = {}
	  for _, server in ipairs(lsp_servers) do
	    table.insert(server_names, server.name)
	  end

	  require('mason-lspconfig').setup({
	    ensure_installed = server_names,
	  })
	end
}
