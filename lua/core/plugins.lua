local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "core.plugin_config" },
  { import = ".plugins" },
  { import ="core.plugin_config.themes" },
},
  {
    install = {
      -- install missing plugins on startup. This doesn't increase startup time.
      missing = true,
      -- try to load one of these colorschemes when starting an installation during startup
      colorscheme = { "ayu-dark" },
    },
    ui = {
      border = "rounded",
      title = "🐧 Lazy Commander Penguin 🐧"
    },
    checker = { -- Check fo rupdates
      enabled = true,
    },
  }

)

-- Lazy Bindings
vim.api.nvim_set_keymap('n', '<leader>Ph', '<cmd>Lazy home<CR>', {desc = "Home" })

vim.api.nvim_set_keymap('n', '<leader>Pi', '<cmd>Lazy install<CR>', {desc = "Install" })

vim.api.nvim_set_keymap('n', '<leader>Pu', '<cmd>Lazy update<CR>', {desc = "Update" })

vim.api.nvim_set_keymap('n', '<leader>Ps', '<cmd>Lazy sync<CR>', {desc = "Sync" })

vim.api.nvim_set_keymap('n', '<leader>Px', '<cmd>Lazy clean<CR>', {desc = "Clean" })

vim.api.nvim_set_keymap('n', '<leader>Pc', '<cmd>Lazy check<CR>', {desc = "Check" })

vim.api.nvim_set_keymap('n', '<leader>Pl', '<cmd>Lazy log<CR>', {desc = "Log" })

vim.api.nvim_set_keymap('n', '<leader>Pr', '<cmd>Lazy restore<CR>', {desc = "Restore" })

vim.api.nvim_set_keymap('n', '<leader>Pp', '<cmd>Lazy profile<CR>', {desc = "Profile" })

vim.api.nvim_set_keymap('n', '<leader>Pd', '<cmd>Lazy debug<CR>', {desc = "Debug" })

vim.api.nvim_set_keymap('n', '<leader>PH', '<cmd>Lazy help<CR>', {desc = "Help" })
