function Delete_scratch_buffers()
  local buffers = vim.api.nvim_list_bufs()
  for _, buffer in ipairs(buffers) do
    local name = vim.api.nvim_buf_get_name(buffer)
    if string.match(name, "^scratch_") then
      vim.api.nvim_buf_delete(buffer, { force = true })
    end
  end
end

local DEBUG = false

local function _debug_print(input)
  if DEBUG then
    print(input)
  end
end

local function c_cmd(optimization_level, filename)
  vim.cmd(":silent !cd %:p:h && clang -S -mllvm --x86-asm-syntax=intel -" .. optimization_level .. " " .. filename)
end

function AsmOutputUpdate(optimization_level)
  if optimization_level == nil then
    optimization_level = "O0"
  end
  local filename = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(0))
  _debug_print(filename)
  c_cmd(optimization_level, filename)
  local output_file = vim.fn.fnamemodify(filename, ":t:r") .. ".s"
  _debug_print(output_file)
  -- vim.fn.system(cmd)
  local found = false
  -- Iterate through all open buffers
  for _, winnr in ipairs(vim.api.nvim_list_wins()) do
    local bufnr = vim.api.nvim_win_get_buf(winnr)
    local bufname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":t")
    _debug_print(vim.api.nvim_buf_get_name(bufnr))
    -- Check if the buffer's name matches the old assembly file
    if bufname == output_file then
      found = true
      _debug_print("found")
      break
    end
  end
  if not found then
    _debug_print("not found")
    vim.cmd(":vs " .. vim.fn.fnamemodify(filename, ":r") .. ".s")
    vim.cmd("w")
  end
  -- Delete_scratch_buffers()
end

vim.cmd("command! -nargs=+ Asm lua AsmOutputUpdate(<f-args>)")
