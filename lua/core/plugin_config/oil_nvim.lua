return {
  "stevearc/oil.nvim",
  enabled = true,
  keys = {
    { "<leader>o", "<cmd>Oil<CR>", desc = "Explorer Toggle" }
  },
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup()
    -- vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Explorer Toggle" })
  end
}
