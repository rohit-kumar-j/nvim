return {
  "rohit-kumar-j/cmake-tools.nvim",
  enabled = true,
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("cmake-tools").setup({
      cmake_command = "cmake", -- path of executable
      -- cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
      -- cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
      -- cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
      cmake_build_directory = "build",
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
      -- cmake_executor = {   -- executor to use
      --   name = "terminal", -- name of the executor
      -- },
      cmake_notifications = {
        enabled = false, -- show cmake execution progress in nvim-notify
      },
    })

    -- CMake Keybindings
    vim.api.nvim_set_keymap("n", "<leader>cg", ":CMakeGenerate<CR>", { noremap = true, desc = "Generate" })
    vim.api.nvim_set_keymap("n", "<leader>cb", ":CMakeBuild<CR>", { noremap = true, desc = "Build" })
    vim.api.nvim_set_keymap("n", "<leader>cd", ":CMakeDebug<CR>", { noremap = true, desc = "Debug" })
    vim.api.nvim_set_keymap("n", "<leader>cr", ":CMakeRun<CR>", { noremap = true, desc = "Run" })
    vim.api.nvim_set_keymap("n", "<leader>cc", ":CMakeClean<CR>", { noremap = true, desc = "Clean" })
    vim.api.nvim_set_keymap("n", "<leader>cC", ":CMakeClose<CR>", { noremap = true, desc = "Close Console" })
    vim.api.nvim_set_keymap("n", "<leader>co", ":CMakeOpen<CR>", { noremap = true, desc = "Open Console" })
    vim.api.nvim_set_keymap("n", "<leader>cs", ":CMakeStop<CR>", { noremap = true, desc = "Stop" })
    vim.api.nvim_set_keymap("n", "<leader>ci", ":CMakeInstall<CR>", { noremap = true, desc = "Install" })
    vim.api.nvim_set_keymap("n", "<leader>ca", ":CMakeLaunchArgs<CR>", { desc = "Launch Args" })
    vim.api.nvim_set_keymap("n", "<leader>cl", ":CMakeSelectLaunchTarget<CR>", { desc = "Select Launch Target" })

    --- CMakeQuick <...>
    vim.api.nvim_set_keymap("n", "<leader>cqb", ":CMakeQuickBuild<CR>", { noremap = true, desc = "Quick Build" })
    vim.api.nvim_set_keymap("n", "<leader>cqd", ":CMakeQuickDebug<CR>", { noremap = true, desc = "Quick Debug" })
    vim.api.nvim_set_keymap("n", "<leader>cqr", ":CMakeQuickRun<CR>", { noremap = true, desc = "Quick Run" })

    --- CMakeSelect <...>
    vim.api.nvim_set_keymap("n", "<leader>cSb", ":CMakeSelectBuildTarget<CR>", { desc = "Build Target" })
    vim.api.nvim_set_keymap("n", "<leader>cSt", ":CMakeSelectBuildType<CR>", { desc = "Build Type" })
    vim.api.nvim_set_keymap("n", "<leader>cSp", ":CMakeSelectBuildPreset<CR>", { desc = "Build Preset" })
    vim.api.nvim_set_keymap("n", "<leader>cSc", ":CMakeSelectConfigurePreset<CR>", { desc = "Configure Preset" })
    vim.api.nvim_set_keymap("n", "<leader>cSl", ":CMakeSelectLaunchTarget<CR>", { desc = "Launch Target" })
    vim.api.nvim_set_keymap("n", "<leader>cSw", ":CMakeSelectCwd<CR>", { noremap = true, desc = "CWD" })
    vim.api.nvim_set_keymap("n", "<leader>cSk", ":CMakeSelectKit<CR>", { noremap = true, desc = "Kit" })

    -- Misc
    vim.api.nvim_set_keymap("n", "<leader>cSs", ":CMakeSettings<CR>", { noremap = true, desc = "Settings" })
    vim.api.nvim_set_keymap("n", "<leader>cST", ":CMakeShowTargetFiles<CR>", { desc = "Show Target Files" })
    vim.api.nvim_set_keymap("n", "<leader>ct", ":CMakeTargetSettings<CR>", { desc = "Show Target Settings" })
  end
}
