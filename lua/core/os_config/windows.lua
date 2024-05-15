-- Win32
--
-- Multi/Single clipboard copy
if (vim.api.nvim_get_var("copy_to_single_clipboard") == true) then
  vim.opt.clipboard:prepend { "unnamed", "unnamedplus" }
end

vim.g.workbench_storage_path = vim.fn.expand("~") .. "/AppData/Local/nvim_workbench/" .. vim.g.notes_folder
vim.api.nvim_set_var("code_lldb_executable_path","C:/Users/Rohit/lldb/bin/x86_64/lldb")
vim.api.nvim_set_var("cppdbg_executable_path","")

      "C:/Users/Rohit/AppData/Local/nvim/lua/core/plugin_config/snippets/"
-- Toggle term settigs
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end
