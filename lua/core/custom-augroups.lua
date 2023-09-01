_G.User = {}

User.autoformat = false

local highlight_group = vim.api.nvim_create_augroup('User_Group', { clear = true })
vim.api.nvim_create_autocmd('User_Group', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  group = vim.api.nvim_create_augroup('User_Group', { clear = false }),
  pattern = "*",
  callback = function()
    if User.autoformat == true then
      if vim.o.filetype == 'help' then
        return
      else
        vim.lsp.buf.format()
        -- print("Formatted buffer and saved!")
      end
    else
      -- print("Saving file... Auto format disabled!")
      return
    end
  end
})

function _G.toggleAutoformat()
  if User.autoformat == true then
    User.autoformat = not User.autoformat
    print("Disabled format on save")
  else
    User.autoformat = not User.autoformat
    print("Enabled format on save")
  end
end




--- PANDOC Rendering
-- [[ Edit markdown tables on save with pandoc ]]
-- Define the is_markdown function
-- function User.is_markdown()
--   local extension = vim.fn.expand('%:e')
--   return extension == 'md' or extension == 'markdown'
-- end

-- NOTE: If this errors, remove the User namesapce and make the function local
--
-- Define the BufWritePost autocommand
-- vim.cmd([[
--   augroup pandoc
--     autocmd!
--     autocmd BufWritePost *.md if luaeval("User.is_markdown()") | silent execute '!pandoc % --lua-filter=html_details -t markdown-simple_tables -o %' | edit | endif
--   augroup END
-- ]])
--
