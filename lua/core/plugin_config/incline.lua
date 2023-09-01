return {
	"b0o/incline.nvim",
	event = "BufReadPre",
	config = function()  
	  require('incline').setup()
	end
}
