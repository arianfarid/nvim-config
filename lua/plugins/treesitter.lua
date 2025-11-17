return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"json",
				"javascript",
				"typescript",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"rust",
				"python",
				"query",
			},
			sync_install = false,

			auto_install = true, 
			highlight = {
				enable = true,
				-- disable = {"c", }
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}

