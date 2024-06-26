return {
  "mfussenegger/nvim-dap",
  enabled = vim.api.nvim_get_var("useNvimDAP"),
  -- enabled = true,
  keys = {
    { "<leader>dt", "<cmd>lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle BreakPoint" }
  },
  dependencies = {
    "nvim-telescope/telescope-dap.nvim",
    "theHamsta/nvim-dap-virtual-text",
    "LiadOz/nvim-dap-repl-highlights",
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    ---
    --- @Points
    vim.fn.sign_define("DapBreakpoint",
      { text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }) --🛑
    vim.fn.sign_define("DapLogPoint",
      { text = "🗨️", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }) --🗨️🗯️
    vim.fn.sign_define("DapBreakpointRejected",
      { text = "⛔", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointCondition",
      { text = "🟡", texthl = "blue", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
    vim.fn.sign_define("DapStopped",
      { text = "👽", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })

    ---@Step Back
    vim.keymap.set("n", "<leader>db",
      function() require("dap").step_back() end,
      { noremap = true, desc = "Step Back" }
    )

    ---@Continue
    vim.keymap.set("n", "<leader>dc",
      function() require("dap").continue() end,
      { noremap = true, desc = "Continue" }
    )

    ---@Run to Cursor
    vim.keymap.set("n", "<leader>dC",
      function() require("dap").run_to_cursor() end,
      { noremap = true, desc = "Run To Cursor" }
    )

    ---@Disconnect
    vim.keymap.set("n", "<leader>dD",
      function() require("dap").disconnect() end,
      { noremap = true, desc = "Disconnect" }
    )

    ---@Session
    vim.keymap.set("n", "<leader>dg",
      function() require("dap").session() end,
      { noremap = true, desc = "Get Session" }
    )

    ---@Step Into
    vim.keymap.set("n", "<leader>di",
      function() require("dap").step_into() end,
      { noremap = true, desc = "Step Into" }
    )

    ---@Step Over
    vim.keymap.set("n", "<leader>do",
      function() require("dap").step_over() end,
      { noremap = true, desc = "Step Over" }
    )

    ---@Step Out
    vim.keymap.set("n", "<leader>dO",
      function() require("dap").step_out() end,
      { noremap = true, desc = "Step Out" }
    )

    ---@Toggle LogPoint
    vim.keymap.set("n", "<leader>dL",
      function() require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end,
      { noremap = true, desc = "Log Point" }
    )

    ---@pause
    vim.keymap.set("n", "<leader>dp",
      function() require("dap").pause() end,
      { noremap = true, desc = "Pause" }
    )

    ---@Open Repl
    vim.keymap.set("n", "<leader>dr",
      function() require("dap").repl.toggle() end,
      { noremap = true, desc = "Toggle Repl" }
    )

    ---@Run Last
    vim.keymap.set("n", "<leader>dl",
      function() require("dap").run_last() end,
      { noremap = true, desc = "Run Last" }
    )

    ---@Start
    --- NOTE: Start and Continue have same maping
    vim.keymap.set("n", "<leader>ds",
      function() require("dap").continue() end,
      { noremap = true, desc = "Start" }
    )

    ---@Close
    vim.keymap.set("n", "<leader>dq",
      function() require("dap").close() end,
      { noremap = true, desc = "Close" }
    )

    --    lld --version
    -- lld is a generic driver.
    -- Invoke ld.lld (Unix), ld64.lld (macOS), lld-link (Windows), wasm-ld (WebAssembly) instead

    -- Adapters
    local dap = require("dap")
    dap.adapters.lldb = {
      type = "executable",
      command = "/opt/homebrew/opt/llvm/bin/lldb-dap", -- adjust as needed, must be absolute path
      name = "lldb",
      detach = true
    }
    -- dap.adapters.codelldb = {
    --   id = "codelldb",
    --   name = "lldb",
    --   -- type = "executable",
    --   type = 'server',
    --   host = '127.0.0.1',
    --   port = 8080, -- 💀 Use the port printed out or specified with `--port`
    --   executable = {
    --     command = vim.api.nvim_get_var("code_lldb_executable_path"), -- This is in OS Config
    --     args = {}
    --     -- args = { "--port", "${port}" },
    --     -- detach = false,
    --     }
    -- }
    -- dap.adapters.cppdbg = {
    --   id = "cppdbg",
    --   type = "executable",
    --   command = vim.api.nvim_get_var("cppdbg_executable_path"), -- This is in OS Config
    --   stopAtBeginningOfMainSubprogram = true,
    -- }
    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
          -- return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          return vim.fn.getcwd() .. "/build/main_exe"
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = { "-r" },
        runInTerminal = false,
        integratedTerminal = true
      }
      -- {
      --   name = "Launch file",
      --   type = "codelldb",
      --   request = "launch",
      --   program = function()
      --     return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      --   end,
      --   cwd = "${workspaceFolder}",
      --   stopOnEntry = true,
      -- },
    }
    -- dap.configurations.c = {
    --   {
    --     name = "Debug J-Link",
    --     type = "cdbg",
    --     request = "launch",
    --     cwd = "${workspaceFolder}",
    --     program = function()
    --       return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --     end,
    --     stopAtEntry = false,
    --     MIMode = "gdb",
    --     miDebuggerServerAddress = "localhost:2331",
    --     miDebuggerPath = "arm-none-eabi-gdb",
    --     serverLaunchTimeout = 5000,
    --     postRemoteConnectCommands = {
    --       {
    --         text = "monitor reset",
    --         ignoreFailures = false
    --       },
    --       {
    --         text = "load",
    --         ignoreFailures = false
    --       },
    --     },
    --   }
    -- }
    dap.configurations.rust = dap.configurations.cpp
    dap.configurations.c = dap.configurations.cpp
  end
}
