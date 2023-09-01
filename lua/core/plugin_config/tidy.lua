return {
	"mcauley-penney/tidy.nvim",
	event = "VeryLazy",
	opts = {
	  filetype_exclude = { "markdown", "diff" }
	},
    -- init = function()
    --     vim.keymap.set('n', "<leader>te", require("tidy").toggle, {})
    -- end
}
