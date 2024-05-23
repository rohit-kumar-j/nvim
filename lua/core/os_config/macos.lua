-- MACOS
--
-- Multi/Single clipboard copy
if (vim.api.nvim_get_var("copy_to_single_clipboard") == true) then
  vim.opt.clipboard:prepend { "unnamedplus" }
end

vim.g.nvim_config_path = vim.fn.expand("~") .. "/.config/nvim"
vim.api.nvim_set_var("code_lldb_executable_path","/usr/bin/lldb")
vim.api.nvim_set_var("cppdbg_executable_path","")
