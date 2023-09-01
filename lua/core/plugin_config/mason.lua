return {
  "williamboman/mason.nvim",
  enabled = true,
  event = "VeryLazy",
  build = function()
    pcall(vim.cmd, 'MasonUpdate')
  end,
  config = function()
    -- Set up mason-lspconfig
    require('mason').setup({
      ui = {
        border = "rounded",
        -- border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        scrollbar = "║",
      }
    })
  end
}
