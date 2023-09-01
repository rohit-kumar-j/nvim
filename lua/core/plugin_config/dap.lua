return {
	'mfussenegger/nvim-dap',
	enabled = true,
	event = "VeryLazy",
	config = function ()
	  vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
	  vim.fn.sign_define("DapStopped ", { text = '👉', texthl = '', linehl = 'debugPC', numhl = '' })
	  -- Keybinds
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
	  
	  -- Adapters
	  local dap = require('dap')
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
	  }
	end
}
