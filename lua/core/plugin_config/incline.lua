return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  enabled = false,
  config = function()
    require("incline").setup()
  end
}
