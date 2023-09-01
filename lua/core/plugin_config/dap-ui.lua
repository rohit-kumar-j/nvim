return {
  'rcarriga/nvim-dap-ui',
  enabled = true,
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  keys = {
    { "<leader>du", "<cmd>lua require('dapui').open({ reset = false })<CR>", desc = "DapUI Toggle" }
  },
  config = function()
    require("dapui").setup({})

    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    ---@Reset UI
    vim.keymap.set("n", "<leader>dR",
      function() require('dapui').open({ reset = true }) end,
      { noremap = true, desc = "DapUI reset" }
    )

    ---@Toggle UI
    vim.keymap.set("n", "<leader>du",
      function() require('dapui').open({ reset = false }) end,
      { noremap = true, desc = "DapUI Toggle" }
    )

    ---@Close UI
    vim.keymap.set("n", "<leader>dC",
      function() require('dapui').close() end,
      { noremap = true, desc = "DapUI Close" }
    )
  end
}
