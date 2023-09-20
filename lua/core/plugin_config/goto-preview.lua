return {
  "rmagatti/goto-preview",
  enabled = true,
  event = "LspAttach",
  config = function()
    require("goto-preview").setup {}
    vim.keymap.set("n", ",d",
      "<cmd>lua require ('goto-preview').goto_preview_definition()<cr>", { desc = "Definition" })
    vim.keymap.set("n", ",t",
      "<cmd>lua require ('goto-preview').goto_preview_type_definition()<cr>", { desc = "Type Definition" })
    vim.keymap.set("n", ",i",
      "<cmd>lua require ('goto-preview').goto_preview_implementation()<cr>", { desc = "Implementation" })
    vim.keymap.set("n", ",r",
      "<cmd>lua require ('goto-preview').goto_preview_references()<cr>", { desc = "References" })
  end
}
