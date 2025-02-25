return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt" },
			c = { "clang-format" },
			-- zig = "zigfmt",
		},
		format_on_save = {
			-- I recommend these options. See :help conform.format for details.
			timeout_ms = 1000,
		},
		-- Set the log level. Use `:ConformInfo` to see the location of the log file.
		log_level = vim.log.levels.ERROR,
		-- Conform will notify you when a formatter errors
		notify_on_error = true,
	},
}
