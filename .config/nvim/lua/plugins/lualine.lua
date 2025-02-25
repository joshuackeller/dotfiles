return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- local repo_name = nil
		-- local function get_repo_name()
		-- 	if repo_name == nil then
		-- 		local handle = io.popen("git rev-parse --show-toplevel 2> /dev/null | xargs basename")
		-- 		local result = handle:read("*a")
		-- 		handle:close()
		-- 		if vim.v.shell_error ~= 0 then
		-- 			repo_name = ""
		-- 		else
		-- 			repo_name = result:gsub("\n", "")
		-- 		end
		-- 	end
		-- 	return repo_name
		-- end

		require("lualine").setup({
			options = {
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				-- lualine_a = { { "mode", separator = { left = "" } } },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "filetype" },
				-- lualine_x = {
				-- 	{
				-- 		get_repo_name,
				-- 		color = { fg = "#000000", bg = "#ffffff" },
				-- 		-- separator = { left = "" },
				-- 	},
				-- },
				-- lualine_y = { { "progress", separator = { left = "", right = "" } } },
				-- lualine_z = { { "location", separator = { right = "" } } },
			},
		})
	end,
}
