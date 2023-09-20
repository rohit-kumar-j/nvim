return {
  "folke/which-key.nvim",
  enabled = true,
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    local mappings = {
      b = { name = "Buffers" },
      c = {
        name = "CMake",
        q = {
          name = "CMake Quick"
        },
        S = {
          name = "CMake Select"
        }
      },
      d = { name = "DAP" },
      M = { name = "Mason" },
      l = { name = "lsp.buf" },
      L = { name = "Lsp..." },
      G = { name = "GodBolt" },
      g = { name = "Git" },
      t = { name = "Telescope" },
      h = { name = "Harpoon" },
      H = { name = "Hex Editor" },
      P = { name = "Lazy" },
      v = { name = "VimTex" },
      ["<space>"] = { name = "Workbench" },
      z = { name = "Zen" },
    }
    local opts = { prefix = vim.g.mapleader }
    wk.register(mappings, opts)
  end
}
