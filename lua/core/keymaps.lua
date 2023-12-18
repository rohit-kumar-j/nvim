local vim = vim

--- Run build.sh in Current Dir
vim.keymap.set("n", "<leader>s", "<cmd>!./build.sh<cr>", { desc = "./build.sh" })
vim.keymap.set("n", "<leader>r", "<cmd>!./run.sh<cr>", { desc = "./run.sh" })
vim.keymap.set("n", "<leader>a", "<cmd>!./format.sh<cr>", { desc = "./format.sh" })
vim.keymap.set("n", "<leader>k", "<cmd>!./clean.sh<cr>", { desc = "./clean.sh" })
vim.keymap.set("n", "<leader>e", "<cmd>!./build.sh && ./run.sh<cr>", { desc = "build and run" })

--- Write out, Quit, Close
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", "<cmd>wall | :qa<cr>", { desc = "Write All & Quit" })
vim.keymap.set("n", "<leader>x", "<cmd>close<cr>", { desc = "Close" })

--- Buffer Delete and wipeot
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Current Buffer" })
vim.keymap.set("n", "<leader>bw", "<cmd>bwipeout!<cr>", { desc = "Buffer WipeOut without saving" })
vim.keymap.set("n", "<leader>bW", "<cmd>noautocmd w<CR>", { desc = "Save without formatting (noautocmd)" })

--- Navigation of Windows
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

--- Quick Esc
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = false })

--- Buffer Movement
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
--- Next Word and Center
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })

--- Window Resizing
vim.api.nvim_set_keymap("n", "<S-Up>", "<cmd>resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "<cmd>resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Left>", "<cmd>vertical resize +2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Right>", "<cmd>vertical resize -2<CR>", { silent = true })
-- Alternatively:
vim.api.nvim_set_keymap("n", "<C-A-K>", "<cmd>resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-A-J>", "<cmd>resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-A-L>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-A-H>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true })

--- Move selected lines in visual mode
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- terminal mode action: revert to normal mode, i,e collapse the buffer
vim.api.nvim_set_keymap("t", "<A-x>", [[<C-\><C-n>]], { silent = true })

-- copy paste problems- @ThePrimagen
vim.api.nvim_set_keymap("x", "<leader>p", "\"_dP", { noremap = true, silent = true })

--- Tab manipulation
vim.keymap.set("n", "<leader>ta", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabNext<cr>", { desc = "Tab Next" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "Tab Previous" })
vim.keymap.set("n", "<leader>td", "<cmd>tabclose<cr>", { desc = "Close Tab" })

-- Delete text without modifying internal registers
vim.keymap.set({ "n", "x" }, "x", '"_x')

-- Source vimrc
vim.keymap.set("n", "<leader><leader>x", ":source $MYVIMRC<CR>", { desc = "Source VIMRC", silent = true })
-- Source current file
vim.keymap.set("n", "<leader><leader>X", ":source<CR>", { desc = "Source Current File", silent = true })

-- Select all text in current buffer
-- vim.keymap.set('n', '<leader>a', ':normal! ggVG<cr>')

---
---
---
---
---
---
---
---
---
---
---
---
_G.User = {}

_G.User.autoformat = false

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})



vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = vim.api.nvim_create_augroup("User_Group", { clear = false }),
  pattern = "*",
  callback = function()
    if User.autoformat == true then
      if vim.o.filetype == "help" then
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
  if _G.User.autoformat == true then
    _G.User.autoformat = not _G.User.autoformat
    print("Disabled format on save")
  else
    _G.User.autoformat = not _G.User.autoformat
    print("Enabled format on save")
  end
end

-- Toggle Format on save
vim.api.nvim_set_keymap("n", "<leader>F", ":lua toggleAutoformat()<CR>",
  { noremap = true, silent = true, desc = "Toggle Format on Save" })

-- Fold close
vim.api.nvim_set_keymap("n", "<leader><leader>f", ":%foldclose<CR>",
  { noremap = true, silent = true, desc = "Fold Close" })


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
