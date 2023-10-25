return {
  "tikhomirov/vim-glsl",
  enabled = true,
  event = "VeryLazy",
  ft = { "vert", "frag", "glsl" },
  config = function()
    require("glow").setup({})
  end
}
