function EndsWith(str, ending)
	return str:sub(-#ending) == ending
end

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(event)
		-- local file = event.file
		-- if
		-- 	not EndsWith(file, ".ts")
		-- 	and not EndsWith(file, ".tsx")
		-- 	and not EndsWith(file, ".js")
		-- 	and not EndsWith(file, ".jsx")
		-- 	and not EndsWith(file, ".json")
		-- 	and not EndsWith(file, ".html")
		-- 	and not EndsWith(file, ".css")
		-- 	and not EndsWith(file, ".yaml")
		-- 	and not EndsWith(file, ".md")
		-- then
		-- end
		-- require("conform").format({ bufnr = event.buf })
	end,
})
