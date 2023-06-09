local dap = require('dap')

vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define("DapStopped ", { text = '👉', texthl = '', linehl = 'debugPC', numhl = '' })
-- {{{, Keybinds
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp',
    function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dwh', function()
    require('dap.ui.widgets').hover()
end, { noremap = true, silent = true, desc = "Dap.UI.Widget Hover" })
vim.keymap.set({ 'n', 'v' }, '<Leader>dwp', function()
    require('dap.ui.widgets').preview()
end, { noremap = true, silent = true, desc = "Dap.UI.Widget Preview" })
vim.keymap.set('n', '<Leader>dwf', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end, { noremap = true, silent = true, desc = "Dap.UI.Widget Preview" })
vim.keymap.set('n', '<Leader>dws', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end, { noremap = true, silent = true, desc = "Dap.UI.Widget Centered Float" })

-- }}}


dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        -- CHANGE THIS to your path!
        -- command = "/home/rkj/Downloads/codelldb-x86_64-linux/extension/adapter/codelldb",
        command = "/usr/bin/lldb-vscode",
        args = { "--port", "${port}" },
    }
}
-- dap.adapters.cppdbg = {
--     id = 'cppdbg',
--     type = 'executable',
--     command = "/home/rkj/Downloads/cpptools-linux/extension/debugAdapters/bin/OpenDebugAD7"
-- }
local dap = require('dap')
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
    -- {
    --     name = "Launch file",
    --     type = "cppdbg",
    --     request = "launch",
    --     program = function()
    --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --     end,
    --     cwd = '${workspaceFolder}',
    --     stopAtEntry = true,
    -- },
    -- {
    --     name = 'Attach to gdbserver :1234',
    --     type = 'cppdbg',
    --     request = 'launch',
    --     MIMode = 'gdb',
    --     miDebuggerServerAddress = 'localhost:1234',
    --     miDebuggerPath = '/usr/bin/gdb',
    --     cwd = '${workspaceFolder}',
    --     program = function()
    --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --     end,
    -- },
}

--[[ local dap = require('dap')


print(os.getenv('HOME'))
local home = os.getenv('HOME')
local command = home .. "/usr/bin/lldb"
    -- "\\.vscode\\extensions\\ms-vscode.cpptools-1.15.4-win32-x64\\debugAdapters\\bin\\OpenDebugAD7.exe"

local opts = {}
local miDebuggerPath

if vim.fn.has('win32') then
  command = home .. "\\.vscode\\extensions\\ms-vscode.cpptools-1.15.4-win32-x64\\debugAdapters\\bin\\OpenDebugAD7.exe"
  opts = {
    detach = false,
  }
  miDebuggerPath = "C:\\MinGW\\bin\\gdb.exe" -- 8.3.1
else
  command = os.getenv('HOME') ..
      '/absolute/path/to/cpptools/extension/debugAdapters/bin/OpenDebugAD7' -- TODO : GDB in linux
  opts = {}
  miDebuggerPath = '/usr/bin/gdb'
end

dap.adapters.cppdbg = {
  name = 'cppdbg',
  type = 'executable',
  command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
  -- command = command,
  options = opts
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = miDebuggerPath,
    cwd = '${workspaceFolder}',
    setupCommands = {
      text = '-enable-pretty-printing',
      description = 'enable pretty printing',
      ignoreFailures = false
    },
    stopAtEntry = true,
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}
dap.configurations.h = dap.configurations.cpp
dap.configurations.c = dap.configurations.cpp ]]
