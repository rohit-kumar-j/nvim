return {
  "rohit-kumar-j/cmake-tools.nvim",
  enabled = true,
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("cmake-tools").setup({
      -- cmake_command = "cmake", -- path of executable
      -- cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
      -- cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
      -- cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
      -- cmake_build_directory = "build",
      -- cmake_soft_link_compile_commands = true,
      -- cmake_kits_path = nil, -- this is used to specify global cmake kits path, see CMakeKits for detailed usage
      -- cmake_variants_message = {
      --   short = { show = true }, -- whether to show short message
      --   long = { show = true, max_length = 40 }, -- whether to show long message
      -- },
      -- cmake_dap_configuration = { -- debug settings for cmake
      --   name = "cpp",
      --   type = "codelldb",
      --   request = "launch",
      --   stopOnEntry = false,
      --   runInTerminal = true,
      --   console = "integratedTerminal",
      -- },
      -- cmake_executor = { -- executor to use
      --   name = "terminal", -- name of the executor
      -- },
      -- cmake_notifications = {
      --   enabled = false, -- show cmake execution progress in nvim-notify
      -- },
    })
  end

}
