return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },

  config = function()
    require("typescript-tools").setup({
      settings = {
        tsserver_file_preferences = {
          importModuleSpecifierPreference = "relative",
          includeInlayParameterNameHints = "all",
          includeInlayVariableTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
        },
      },
    })
  end,
}

