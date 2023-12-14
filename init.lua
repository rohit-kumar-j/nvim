--Globals
local vim = vim
vim.api.nvim_set_var("debug", false)                             -- For debugging o/p
vim.api.nvim_set_var("useLSP", false)                            -- For Using LSP
vim.api.nvim_set_var("CMakeTools", false)                        -- For Using CMakeTools Plugin
vim.api.nvim_set_var("useDashboard", false)                      -- For Using Dashboard
vim.api.nvim_set_var("useNavbuddy", false)                       -- For Using Navbuddy
vim.api.nvim_set_var("useBufferLineAndNvimTree", false)          -- For Using Bufferline and NvimTree Plugin
vim.api.nvim_set_var("copy_to_single_clipboard", false)          -- Copy with y . Only tested to win32 and wsl
vim.api.nvim_set_var("use_Vimspector_instead_of_Nvimdap", false) -- Use Vimspector instead of Nvim dap

-- Quickly load config
vim.loader.enable()

--- Startup Sepcific
vim.g.notes_folder = "nvim_workbench_notes" -- Nvim Workbench

-- Basic Setup
require("core.neovide") -- Neovide Specific Settings
require("core.lsp_settings")
require("core.os_config")
require("core.settings")
require("core.keymaps")

-- Install plugins
require("core.plugins")

-- final UI commnads
vim.cmd([[:set laststatus=3]]) -- Global Status Line

-- CursorLine Setup
vim.cmd([[:hi CursorLineNr guibg=NONE guifg=#ffffff]]) -- Highlight cursorline
vim.cmd([[:set cursorline]])                           -- Highlight cursorline
vim.cmd([[:set cursorlineopt=number]])                 -- only hihglight the line number

-- Gives vim like feel with NonLine characters
vim.cmd([[:hi EndOfBuffer ctermfg=blue ctermbg=None]])
vim.cmd([[:hi NonText ctermfg=12 guibg=bule]])
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "lightblue" })
vim.opt.fillchars = { eob = "~" }
