-- lua/plugins/rose-pine.lua
vim.opt.laststatus = 2 -- Or 3 for global statusline
vim.opt.statusline = " %f %m %= %l:%c ☾ "
return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "moon", 
			disable_background = true,
			disable_float_background = true,
			highlight_groups = {
				StatusLine = { fg = "foam", bg = "foam", blend = 10 },
				StatusLineNC = { fg = "subtle", bg = "surface" },
				TelescopeBorder       = { fg = "highlight_high", bg = "none" },
				TelescopeNormal       = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection     = { fg = "text", bg = "base" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		})

	  vim.cmd("colorscheme rose-pine")
  end,
}

