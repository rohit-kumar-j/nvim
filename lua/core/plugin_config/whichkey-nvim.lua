return {
  "folke/which-key.nvim",
  enabled = vim.api.nvim_get_var("useWhichKey"),
  event = "VeryLazy",
  config = function()
    local my_mappings = {}
    if vim.api.nvim_get_var("useCMakeTools") then
      table.insert(my_mappings,
        {
          c = { name = "CMake",
            q = { name = "CMake Quick" },
            S = { name = "CMake Select" }
          }
        }
      )
    end
    if vim.api.nvim_get_var("useLSP") then
      table.insert(my_mappings,
        {
          l = { name = "lsp.buf" }
        }
      )
    end

    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    local mappings = {
      b = { name = "Buffers" },
      d = { name = "DAP" },
      M = { name = "Mason" },
      m = { name = "Mini Map" },
      L = { name = "Lsp..." },
      G = { name = "GodBolt" },
      g = { name = "Git" },
      t = { name = "Telescope" },
      T = { name = "TableMode" },
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
