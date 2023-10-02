return {
  "vigoux/ltex-ls.nvim",
  enabled = false,
  event = "InsertEnter",
  opts = {
    disabled_filetypes = { "markdown" },
  },
  dependencies = "neovim/nvim-lspconfig"
}
