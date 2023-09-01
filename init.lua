--true Globals
local vim = vim
vim.api.nvim_set_var('debug', false)                    -- For debugging o/p
vim.api.nvim_set_var('copy_to_single_clipboard', false) -- Copy with y . Only tested to win32 and wsl

-- Nvim Workbench
vim.g.notes_folder = "nvim_workbench_notes"

-- Global LSP Servers
vim.api.nvim_set_var('lsp_servers',
  {
    {
      name = 'lua_ls',
      settings = {
        Lua = {
          diagnostics = {
            globals = {
               'vim' ,
               'require'
            },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = '"${3rd}/luv/library"',
            checkThirdParty = false,
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
          completion = {
            callSnippet = "Replace"
          },
        },
      },
    },
    {
      name          = 'cmake',
      settings      = {
        CMake = {
          filetypes = { 'cmake', 'CMakeLists.txt', 'CMakeCache.txt' },
        },
      },
      on_new_config = function(new_config, new_cwd)
        local status, cmake = pcall(require, "cmake-tools")
        if status then
          cmake.clangd_on_new_config(new_config)
        end
      end,
    },
    {
      name = 'clangd',
      -- cmd = {
      --     "clangd",
      -- },
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
      end,
      settings = {
        clangd = {
          extraArgs = {
            -- "-ID:\\VS2022\\Koala\\external",
          }
          --      excludeArgs = { '-stdlib=libc++' }
        },
      },
      on_new_config = function(new_config, new_cwd)
        local status, cmake = pcall(require, "cmake-tools")
        if status then
          cmake.clangd_on_new_config(new_config)
        end
      end,
    },
    -- {
    --     name = 'jedi_language_server',
    -- },
    {
      name = 'pylsp',
    },
    {
      name = 'pyright',
      settings = {
        enable = true,
        -- trace = { server = "verbose" },
        -- commandPath = "",
        -- configurationSources = { "pycodestyle" },
        -- plugins = {
        --     jedi_completion = { enabled = true },
        --     jedi_hover = { enabled = true },
        --     jedi_references = { enabled = true },
        --     jedi_signature_help = { enabled = true },
        --     jedi_symbols = {
        --         enabled = true,
        --         all_scopes = true
        --     },
        --     mccabe = {
        --         enabled = true,
        --         threshold = 15
        --     },
        --     preload = { enabled = true },
        --     pycodestyle = { enabled = true },
        --     pydocstyle = {
        --         enabled = false,
        --         match = "(?!test_).*\\.py",
        --         matchDir = "[^\\.].*"
        --     },
        --     pyflakes = { enabled = true },
        --     rope_completion = { enabled = true },
        --     yapf = { enabled = true }
        -- }
      }
    },
    {
      name = 'jsonls', -- for json formatting
    },
    {
      name = 'marksman', -- for latex, lsp
      filetypes = { "bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex", "pandoc", "text",
        "txt" }
    },
    {
        name = 'ltex', -- for latex, markdown lsp
        additionalRules = {
            languageModel = {'~/ngrams/'},
        },
        filetypes = { "bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex", "pandoc", "text",
            "txt" }
    },
    {
      name = 'esbonio', -- for reStructuredText lsp
    },
    {
      name = 'lemminx', -- for xml
    },
    -- {
    --   name = 'grammarly', -- for plain text
    --   filetypes = {
    --     "markdown",
    --     "text",
    --     "txt"
    --   }
    -- }
  }
)


-- Global LSP Linters
vim.api.nvim_set_var('lsp_linters',
  {
    'luacheck', -- lua
    'flake8',   -- python
    'cpplint',  -- C++
    'jsonlint', -- json
    'textlint', -- markdown
    -- No linters for xml
  }
)

-- Global LSP DAP
vim.api.nvim_set_var('lsp_dap',
  {
    'debugpy',  -- python
    'codelldb', -- C++
    'cpptools', -- C++
    -- No dap for json
    -- No dap for markdown
    -- No dap for reStructuredText
    -- No dap for xml
  }
)

-- Global LSP Formatters
vim.api.nvim_set_var('lsp_formatters',
  {
    'stylua',       -- lua
    'black',        -- python
    'clang-format', -- C++, C
    'cmakelang',    -- CMake
    'fixjson',      --json
    'prettierd',    -- markdown
    -- No formatter for reStructuredText
    'xmlformatter'  -- xml
  }
)


-- Global Treesitter Servers
vim.api.nvim_set_var('treesitter_servers',
  {
    'lua',
    'c',
    'cpp',
    'cmake',
    'norg',
    'latex',
    'bibtex',
    -- No treesitter server for xml
    'vim', -- This solves syntax highlighting in {.lua} files
  }
)


-- Plugings
require('core.os_config')
require('core.settings')
require('core.keymaps')

-- Install plugins
require('core.plugins')
