function EndsWith(str, ending)
	return str:sub(-#ending) == ending
end

-- Define a function to perform your custom action
local function my_save_action(event)
	local file = event.file

	if
		EndsWith(file, ".ts")
		or EndsWith(file, ".tsx")
		or EndsWith(file, ".js")
		or EndsWith(file, ".jsx")
		or EndsWith(file, ".json")
		or EndsWith(file, ".html")
		or EndsWith(file, ".css")
		or EndsWith(file, ".yaml")
		or EndsWith(file, ".md")
	then
		-- Get the file path from the buffer number
		local file_path = vim.api.nvim_buf_get_name(event.buf)

		-- Define the Prettier settings as command line arguments
		local prettier_args = {
			"--arrow-parens",
			"always",
			"--bracket-spacing",
			"true",
			"--end-of-line",
			"lf",
			"--html-whitespace-sensitivity",
			"css",
			"--insert-pragma",
			"false",
			"--single-attribute-per-line",
			"false",
			"--bracket-same-line",
			"false",
			"--jsx-single-quote",
			"false",
			"--print-width",
			"80",
			"--prose-wrap",
			"preserve",
			"--quote-props",
			"as-needed",
			"--require-pragma",
			"false",
			"--semi",
			"true",
			"--single-quote",
			"false",
			"--tab-width",
			"2",
			"--trailing-comma",
			"es5",
			"--use-tabs",
			"false",
			"--write",
			file_path,
		}

		local win_id = vim.api.nvim_get_current_win()
		local cursor = vim.api.nvim_win_get_cursor(win_id)
		local view = vim.fn.winsaveview()

		-- Run prettier using an external shell command
		vim.fn.jobstart({ "prettier", unpack(prettier_args) }, {
			on_exit = function(_, exit_code)
				if exit_code == 0 then
					-- Reloads buffer
					vim.cmd("e!")
					-- Keeps cursor in place
					vim.api.nvim_win_set_cursor(win_id, cursor)
					vim.fn.winrestview(view)
					vim.cmd("redraw")
				else
					vim.api.nvim_echo({ { "Prettier formatting failed", "ErrorMsg" } }, false, {})
				end
			end,
		})
	end
end

-- Create an autocmd group to avoid duplicate autocmds
vim.api.nvim_create_augroup("FormatCommands", { clear = true })

-- Trigger the action on the BufWritePost event, which is fired after a buffer is written to a file
vim.api.nvim_create_autocmd("BufWritePost", {
	group = "FormatCommands",
	pattern = "*",
	callback = my_save_action,
})
