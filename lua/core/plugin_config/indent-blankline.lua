return {
	"lukas-reineke/indent-blankline.nvim",
	enabled = true,
	event = "BufReadPre",
	config = function()
	  require("indent_blankline").setup({
	    viewport_buffer = 100,
	    char = "▏",
	    context_char = "▏",
	    filetype_exclude = {
	        'help',
	    },
	    space_char_blankline = " ",
	    use_treesitter = false,
	    show_current_context = true,
	    show_current_context_start = true,
	    show_trailing_blankline_indent = false,
	    show_first_indent_level = true,
	    show_foldtext = false,
	    strict_tabs = true,
	    --    max_indent_increase = 1,
	    })

	  vim.opt.list = true
	  vim.opt.listchars:append "space:⋅"
	  vim.opt.listchars:append "eol:↴"

    end
}
