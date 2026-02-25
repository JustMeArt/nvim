return
{
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			--ensure_installed = { "c", "lua", "vim", "cpp" },
			--sync_install = false,
			highlight = {
  enable = true,
  disable = { "python" },
},
			indent = { enable = true },
		})
	end
}
--commend
