return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = true,
  event = "BufReadPre",
  config = function()
    require("ibl").setup({})

    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
    vim.opt.listchars:append "eol:↴"

    -- NOTE: This does not work anymore
    -- Dashboard -> remove the lines in dashboard
    -- vim.cmd([[
    --   augroup disableIndentlineDb
    --   autocmd!
    --   autocmd VimEnter * :IndentBlanklineDisable
    --   augroup END
    --   ]])
  end
}
