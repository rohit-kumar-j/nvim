-- MACOS
--
-- Multi/Single clipboard copy
if (vim.api.nvim_get_var("copy_to_single_clipboard") == true) then
  vim.opt.clipboard:prepend { "unnamedplus" }
end

vim.g.workbench_storage_path = vim.fn.expand("~") .. "/.cache/nvim_workbench/" .. vim.g.notes_folder
vim.api.nvim_set_var("code_lldb_executable_path","/usr/bin/lldb")
vim.api.nvim_set_var("cppdbg_executable_path","")
