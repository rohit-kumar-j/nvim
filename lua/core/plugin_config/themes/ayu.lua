local user_ayu = {}
--- Example visual select colors
--  make sure you set vim.o.backgorund='light' in your init.lua
function user_ayu.get_visual_bg()
  if vim.o.background == "dark" then
    return { bg = "#333333" }
  else
    return { bg = "#000000" }
  end
end

local transparent = false
local my_overrides = {}

if transparent then
  my_overrides = {
    Normal = { bg = "None" },
    NormalFloat = { bg = "None" },
    ColorColumn = { bg = "None" },
    SignColumn = { bg = "None" },
    Folded = {
      bg = "None",
      -- bg = "#333333",
    },
    FoldColumn = { bg = "None" },
    CursorLine = { bg = "None" },
    CursorColumn = { bg = "None" },
    Visual = user_ayu.get_visual_bg(),
    LineNr = { fg = "#d3d3d3" }, -- This is for trnasparency
    WhichKeyFloat = { bg = "None" },
    VertSplit = { bg = "None" },
  }
else
  my_overrides = {}
end

return {
  "Shatur/neovim-ayu",
  priority = 1000,
  config = function()
    require("ayu").setup({
      overrides = my_overrides,
    })
    vim.cmd([[colorscheme ayu]])
  end,
}
