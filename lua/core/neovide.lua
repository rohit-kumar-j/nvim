-- Neovide Specific Settings
if vim.g.neovide then
  vim.o.guifont = "Fira Code Pro:h14" -- text below applies for VimScript

  vim.g.tansparency = 0.0
  vim.g.neovide_transparency = 0.0
  vim.g.neovide_cursor_antialiasing = true

  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 5

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_touch_deadzone = 6.0

  vim.g.neovide_animation_length = 0.05

  -- Allow clipboard copy paste in neovim
  vim.api.nvim_set_keymap("", "<D-v>", '"+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<C-S-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
