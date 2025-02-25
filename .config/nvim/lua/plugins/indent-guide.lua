return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		local hooks = require("ibl.hooks")

		-- Define a subtle highlight group
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IndentSubtle", { fg = "#3B3B3B" }) -- Adjust the color as needed
		end)

		require("ibl").setup({
			indent = {
				-- char = "│", -- or "▏" for an even thinner line
				char = "▏",
				highlight = "IndentSubtle",
			},
			scope = {
				show_start = false,
			},
		})
	end,
}
