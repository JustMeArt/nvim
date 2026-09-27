return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		require("nvim-treesitter").install({
			"bash", "c", "cpp", "css", "csv", "elixir", "git_config",
			"gitignore", "html", "hyprlang", "ini", "java", "javascript",
			"json", "lua", "make", "markdown", "markdown_inline", "python",
			"toml", "vim", "vimdoc", "xml", "yaml",
		})

		-- main branch has no `highlight`/`indent` modules; start them per-buffer.
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				local lang = vim.treesitter.language.get_lang(ev.match)
				if not lang or not pcall(vim.treesitter.language.add, lang) then
					return
				end
				if ev.match ~= "python" then -- kept your highlight disable
					pcall(vim.treesitter.start, ev.buf, lang)
				end
				vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
