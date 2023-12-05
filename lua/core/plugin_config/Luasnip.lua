return {
  "L3MON4D3/LuaSnip",
  enabled = vim.api.nvim_get_var("useLSP"),
  event = "InsertEnter",
  build = "make install_jsregexp",
}
