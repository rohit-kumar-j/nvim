return {
  "folke/which-key.nvim",
  enabled = true,
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    local mappings = {
      t = { name = "Telescope" },
      h = { name = "Harpoon" },
      P = { name = "Lazy" },
    }
    local opts = { prefix = vim.g.mapleader }
    wk.register(mappings, opts)
  end
}
