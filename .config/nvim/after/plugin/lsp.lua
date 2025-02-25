-- Enable shotcuts: K to see details and gd for go to definition
vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		vim.keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<cr>", { buffer = event.buf })
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { buffer = event.buf })
		vim.keymap.set(
			"n",
			"<leader>d",
			"<cmd>lua vim.diagnostic.open_float(nil, { focusable = false })<cr>",
			{ buffer = event.buf }
		)
		vim.keymap.set("n", "<leader>[", function()
			vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
		end, { desc = "Go to previous error" })

		vim.keymap.set("n", "<leader>]", function()
			vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
		end, { desc = "Go to next error" })
	end,
})
