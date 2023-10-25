return {
  "ggandor/leap.nvim",
  enabled = true,
  event = "BufReadPre",
  config = function()
    require("leap").add_default_mappings()
  end
}
