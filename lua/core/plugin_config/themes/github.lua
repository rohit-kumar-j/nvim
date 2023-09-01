return  {
	'projekt0n/github-nvim-theme',
	-- tag = 'v0.0.7',
	event = "VeryLazy",
	config = function()
	  require('github-theme').setup({
	        -- options = { transparent = true }
	        -- opt = {
	        --     experiments = {
	        --         new_palettes = false,
	        --     },
	        -- },
	    })
        end
}
