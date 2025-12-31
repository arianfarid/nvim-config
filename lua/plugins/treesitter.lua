return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    dependencies = {
      -- Add nvim-ts-autotag
      { "windwp/nvim-ts-autotag" },
      { "crystal-lang-tools/tree-sitter-crystal", lazy = false },
    },
    opts = {
      autotag = {
        -- Setup autotag using treesitter config.
        enable = true,
      },
    },
	config = function()
        local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

        parser_configs.crystal = {
          install_info = {
            url = "https://github.com/crystal-lang-tools/tree-sitter-crystal",
            files = { "src/parser.c", "src/scanner.c" },
            branch = "main",
          },
          filetype = "crystal",
        }
		require("nvim-treesitter.configs").setup({
			indent = { enable = true },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                    }
                }
            },
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"json",
				"javascript",
				"typescript",
                "tsx",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"rust",
				"python",
				"query",
                "zig",
                "crystal",
                "elixir",
                "heex",
                "eex",
			},
			sync_install = false,

			auto_install = true, 
			highlight = {
				enable = true,
				-- disable = {"c", }
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}

