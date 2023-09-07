return {
  "mbbill/undotree",
  enbled = true,
  keys = {
    { "<leader>U", "<cmd>UndotreeToggle<cr>", desc = "UndotreeToggle" },
  },
  config = function()
    vim.cmd([[
      if has("persistent_undo")
         let target_path = expand('~/.undodir')

          " create the directory and any parent directories
          " if the location does not exist.
          if !isdirectory(target_path)
              call mkdir(target_path, "p", 0700)
          endif

          let &undodir=target_path
          set undofile
      endif
    ]])
    vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { noremap = true, silent = true })
  end
}
