return {
  "p00f/godbolt.nvim",
  enabled = true,
  keys = {
    { "<leader>GG", "<cmd>Godbolt<CR>",                   desc = "GodBolt" },
    { "<leader>GC", "<cmd>GodboltCompiler telescope<CR>", desc = "GodBolt Compiler" },
  },
  config = function()
    require("godbolt").setup({})
  end
}
