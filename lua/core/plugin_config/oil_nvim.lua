return {
  "stevearc/oil.nvim",
  enabled = true,
  -- priority = 1000,
  -- keys = {
  --   { "<leader>o", "<cmd>Oil<CR>", desc = "Oil" }
  -- },
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      }
    })
    -- vim.cmd([[:Oil]]) -- only hihglight the line number
    vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Oil" })
  end
}
