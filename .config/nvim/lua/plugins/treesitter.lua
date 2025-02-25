return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"query",
				"javascript",
				"html",
				"typescript",
				"rust",
				"css",
				"gitignore",
				"json",
				"prisma",
				"sql",
				"regex",
				"python",
				"svelte",
				"tsx",
				"yaml",
				"go",
			},
			sync_install = false,
			highlight = { enable = true },
			-- indent = { enable = true },
		})
	end,
}
