return {
  "petertriho/nvim-scrollbar",
  enabled  = true,
  event = "BufReadPre",
  config = function ()
    require("scrollbar").setup()
  end
}
