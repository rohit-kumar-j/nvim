return{
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    config = function ()
        -- disable netrw at the very start of your init.lua (strongly advised)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        function _G.toggle_nvimtree()
            if vim.fn.bufname():match 'NvimTree_' then
                vim.cmd.wincmd 'p'
            else
                -- require('nvim-tree.api').tree.find_file()
                -- require('nvim-tree.api').tree.toggle()
                vim.cmd('NvimTreeFindFile') -- Find currently open file and set Focus
                vim.cmd('NvimTreeFocus')    -- Focus on the Opened tree
            end
        end

        local is_macunix = vim.fn.has('macunix')
        local is_win32 = vim.fn.has('win32')
        local is_wsl = vim.fn.has('wsl')
        local is_linux = vim.fn.has('linux')

        local conf_dir
        if (is_macunix == 1) then
            conf_dir = os.getenv('HOME') .. "/.config/nvim"
        elseif
            (is_win32 == 1) then
            conf_dir = os.getenv('USERPROFILE') .. "/AppData/Local/nvim" -- IN windows, it is called "USERPROFILE"
        elseif
            (is_wsl == 1 or is_linux == 1) then
            conf_dir = os.getenv('HOME') .. "/.config/nvim"
        end

        -- print("Conf dir : " .. conf_dir)

        function _G.searchDir() --dir_path)
            require('telescope.builtin').find_files {
                border = true,
                cwd = conf_dir
            }
        end

        vim.cmd("command! -nargs=1 SearchDir lua searchDir(<f-args>)")

        -- empty setup using defaults
        require("nvim-tree").setup({
            view = {
                side = 'left',
                width = 35,
                preserve_window_proportions = true,
                -- auto_resize = true,
            },
            diagnostics = {
                enable = true,
                show_on_dirs = false,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
        })

        --- Keymaps
        vim.keymap.set("n", "<leader>e", "<cmd>lua toggle_nvimtree()<CR>", {desc = "Explorer Toggle"})
        vim.keymap.set("n", "<leader>r", "<cmd>lua require('nvim-tree.api').tree.toggle(false, true)<CR>", {desc = "Explorer Peek"})
        vim.keymap.set('n', '<leader>C', '<cmd>lua searchDir()<CR>', {desc = 'Telescope Config Files'})
    end
}
