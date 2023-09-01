return {
  'mfussenegger/nvim-dap',
  enabled = true,
  keys = {
    { "<leader>dt", "<cmd>lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle BreakPoint" }
  },
  dependencies = {
    'nvim-telescope/telescope-dap.nvim',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    -- vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
    vim.fn.sign_define('DapBreakpoint',
      { text = '🔴', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
    vim.fn.sign_define("DapStopped ", { text = '👉', texthl = '', linehl = 'debugPC', numhl = '' })

    ---@Toggle BreakPoint
    vim.keymap.set('n', '<leader>db',
      function() require('dap').toggle_breakpoint() end,
      { noremap = true, desc = "Toggle BreakPoint" }
    )

    ---@Toggle LogPoint
    vim.keymap.set('n', '<leader>dp',
      function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
      { noremap = true, desc = "Log Point" }
    )

    ---@Open Repl
    vim.keymap.set('n', '<leader>dr',
      function() require('dap').repl.toggle() end,
      { noremap = true, desc = "Toggle Repl" }
    )

    ---@Run Last
    vim.keymap.set('n', '<leader>dl',
      function() require('dap').run_last() end,
      { noremap = true, desc = "Run Last" }
    )

    ---@Continue
    vim.keymap.set("n", "<leader>dc",
      function() require('dap').continue() end,
      { noremap = true, desc = "Continue" }
    )

    ---@Step Into
    vim.keymap.set("n", "<leader>di",
      function() require('dap').step_into() end,
      { noremap = true, desc = "Step Into" }
    )

    ---@Step Over
    vim.keymap.set("n", "<leader>do",
      function() require('dap').step_over() end,
      { noremap = true, desc = "Step Over" }
    )

    ---@Step Out
    vim.keymap.set("n", "<leader>dO",
      function() require('dap').step_out() end,
      { noremap = true, desc = "Step Out" }
    )

    ---@UI Widget Hover
    vim.keymap.set({ 'n', 'v' }, '<leader>dwh',
      function() require('dap.ui.widgets').hover() end,
      { noremap = true, silent = true, desc = "Widget Hover" }
    )

    ---@UI Widget Preview
    vim.keymap.set({ 'n', 'v' }, '<leader>dwp',
      function() require('dap.ui.widgets').preview() end,
      { noremap = true, silent = true, desc = "Widget Preview" }
    )

    ---@UI Widget Frames
    vim.keymap.set('n', '<leader>dwf',
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
      end,
      { noremap = true, silent = true, desc = "Widget Frames" }
    )

    vim.keymap.set('n', '<Leader>dws',
      function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
      end,
      { noremap = true, silent = true, desc = "Widget Scopes" }
    )

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
