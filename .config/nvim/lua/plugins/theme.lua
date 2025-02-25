-- return {
-- 	"luisiacc/gruvbox-baby",
-- 	priority = 1000,
-- 	init = function()
-- 		vim.g.gruvbox_baby_color_overrides = {
-- 			error_red = "#E82525",
-- 			red = "#FF5E62",
-- 			-- clean_green = "#6fbd94",
-- 			soft_green = "#50a076",
-- 			forest_green = "#399065",
-- 			-- -- blue_gray = "#91cbcd",
-- 			--  -- blue_gray = "#a7dadb",
-- 			blue_gray = "#b6dbdb",
-- 			orange = "#ff9f60",
-- 			magenta = "#957fb8",
-- 		}
-- 		vim.g.gruvbox_baby_highlights = {
-- 			["@keyword.return"] = { fg = "#D4879C" },
-- 			-- @type.builtin.typescript links to @type.builtin
-- 			["@type.builtin"] = { fg = "#399065" },
-- 			-- ["@string.special.url.tsx"] = { fg = "#E82525" },
-- 		}
-- 		vim.cmd("colorscheme gruvbox-baby")
-- 	end,
-- }
-- return {
-- 	"morhetz/gruvbox",
-- 	priority = 1000,
-- 	init = function()
-- 		vim.cmd("colorscheme gruvbox")
-- 	end,
-- }
-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	priority = 1000,
-- 	init = function()
-- 		require("vscode").setup({
-- 			group_overrides = {
-- 				["@keyword.coroutine.typescript"] = { fg = "#C586C0" },
-- 			},
-- 		})
-- 		vim.cmd("colorscheme vscode")
-- 	end,
-- }
-- return {
-- 	"navarasu/onedark.nvim",
-- 	init = function()
-- 		vim.cmd("colorscheme onedark")
-- 	end,
-- }
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	opts = {
-- 		overrides = function(colors)
-- 			return {
-- 				["@lsp.typemod.variable.local"] = { link = "@variable" },
-- 				["@markup.link.label.tsx"] = { underline = false },
-- 				["@lsp.mod.readonly.typescript"] = { fg = "#7AA89F" },
-- 				-- ["@lsp.typemod.variable.readonly"] = { fg = colors.palette.oldWhite }, -- #C8C093
-- 			}
-- 		end,
-- 	},
-- 	init = function()
-- 		vim.cmd("colorscheme kanagawa")
-- 	end,
-- }
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	init = function()
-- 		vim.cmd("colorscheme kanagawa-dragon")
-- 	end,
-- }
return {
	"rose-pine/neovim",
	name = "rose-pine",
	init = function()
		require("rose-pine").setup({
			variant = "main",
			highlight_groups = {
				-- Assuming the highlight group for "return" is "@keyword.return"
				["@keyword.return"] = { fg = "love" },
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
-- return { "EdenEast/nightfox.nvim" }
-- return {
-- 	"AlexvZyl/nordic.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("nordic").load()
-- 		vim.cmd("colorscheme nordic")
-- 	end,
-- }
-- return {
-- 	"Mofiqul/dracula.nvim",
-- 	config = function()
-- 		local dracula = require("dracula")
-- 		dracula.setup({
-- 			on_colors = function()
-- 				return {
-- 					bg = "#212121",
-- 					-- bg = "#1E202A",
-- 				}
-- 			end,
-- 			on_highlights = function(colors)
-- 				return {
-- 					Normal = { bg = colors.bg },
-- 				}
-- 			end,
-- 		})
-- 		vim.cmd.colorscheme("dracula-soft")
-- 	end,
-- }
-- return {
-- 	"vague2k/vague.nvim",
-- 	config = function()
-- 		-- NOTE: you do not need to call setup if you don't want to.
-- 		require("vague").setup({})
-- 		vim.cmd.colorscheme("vague")
-- 	end,
-- }
