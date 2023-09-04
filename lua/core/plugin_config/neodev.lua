return {
  "folke/neodev.nvim",
  enabled = true,
  event = "InsertEnter",
  ft = { "lua" },
  config = function()
    require("neodev").setup({})
  end
}
