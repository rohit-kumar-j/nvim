return {
	"j-hui/fidget.nvim",
	enabled = true,
	tag = "legacy",
	event = "LspAttach",
	opts = {
	  -- options
	},
	config = function()
	  require("fidget").setup({
	    window = {
	      blend = 0,
	    },
	  })
	end
}
