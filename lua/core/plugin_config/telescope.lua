vim.api.nvim_create_autocmd({ 'WinLeave' }, {
  group = vim.api.nvim_create_augroup('Folds', { clear = true }),
  pattern = "*",
  callback = function()
    if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
    end
  end,
})

return {
  'nvim-telescope/telescope.nvim',
  enabled = true,
  event = "VeryLazy",
  tag = '0.1.2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'voldikss/vim-floaterm',
  },
  config = function()
    local actions = require('telescope.actions')
    require('telescope').setup {
      defaults = {
        layout_config = {
          prompt_position = "bottom",
        },
        selection_caret = " ",
        entry_prefix = " ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        path_display = {},
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        normal_mode = true,
      },
      colorscheme = {
        enable_preview = true,
      },
      buffers = {
        initial_mode = "normal"
      },
    }
    require('telescope').load_extension("ui-select")
    require('telescope').load_extension('dap')
    local extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {
          -- even more opts
          width = 0.8,
          previewer = true,
          prompt_title = false,
          borderchars = {
            { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          },
        }
      },
    }

    -- Set Explicit keymaps
    vim.keymap.set('n', '<space>f', '<cmd>Telescope find_files<cr>', {desc = 'Telescope Find Files'})
    vim.keymap.set('n', '<space>bf', '<cmd>Telescope buffers<cr>', {desc = 'Telescope Buffers'})

    -- Set Menu keymaps
    vim.keymap.set('n', '<space>tf', '<cmd>Telescope find_files<cr>', {desc = 'Find Files'})
    vim.keymap.set('n', '<space>tg', '<cmd>Telescope live_grep<cr>', {desc = 'Live Grep'})
    vim.keymap.set('n', '<space>tr', '<cmd>Telescope resume<cr>', {desc = 'Resume'})
    vim.keymap.set('n', '<space>tb', '<cmd>Telescope buffers<cr>', {desc = 'Buffers'})
    vim.keymap.set('n', '<space>tc', '<cmd>Telescope colorscheme preview=true<cr>', {desc = 'ColorScheme'})
    vim.keymap.set('n', '<space>te', '<cmd>Telescope quickfix<cr>', {desc = 'Quickfix'})
    vim.keymap.set('n', '<space>ts', '<cmd>Telescope lsp_document_symbols<cr>', {desc = 'Document Symbols'})
    vim.keymap.set('n', '<space>tS', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', {desc = 'Workspace Symbols'})
  end
}
