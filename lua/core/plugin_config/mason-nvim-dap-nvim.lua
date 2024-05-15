return {
  "jay-babu/mason-nvim-dap.nvim",
  enabled = false,--vim.api.nvim_get_var("useNvimDAP"),
  dependancies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  opts = {
    handlers = nil,
    ensure_installed = vim.api.nvim_get_var("lsp_dap")
  }
}
