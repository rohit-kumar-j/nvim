return {
  'akinsho/bufferline.nvim',
  event = "VimEnter",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        separator_style = "slant",
        groups = {
          items = {
            require('bufferline.groups').builtin.pinned:with({ icon = "" })
          }
        },
        diagnostics = "nvim_lsp",
        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'underline',
        },
        offsets = {
          {
            filetype = "neo-tree",
            text_align = "center",
            separator = true
          }
        }
      }
    })
  end
}
