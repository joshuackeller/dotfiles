return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		pickers = {
			buffers = {
				ignore_current_buffer = true,
				sort_mru = true,
				sort_lastused = true,
			},
		},
	},
}
