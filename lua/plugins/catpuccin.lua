return
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000 ,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				-- solid sidebar, picture only behind code
				custom_highlights = function(c)
					return {
						NeoTreeNormal = { bg = c.mantle },
						NeoTreeNormalNC = { bg = c.mantle },
						NeoTreeEndOfBuffer = { bg = c.mantle },
						-- solid popups (telescope, completion, hover)
						NormalFloat = { bg = c.mantle },
						FloatBorder = { bg = c.mantle },
						Pmenu = { bg = c.mantle },
						TelescopeNormal = { bg = c.mantle },
						TelescopeBorder = { bg = c.mantle },
						CursorLine = { bg = c.surface0 },
					}
				end,
			})
			vim.cmd.colorscheme "catppuccin"
		end
	}
