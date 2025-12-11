return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
        },
      })
    end,
      },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "bashls",
          "jsonls",
          "pyright",
          "rust_analyzer",
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },

    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- Formatters
          "stylua",
          "prettier",
          "black",
          "shfmt",

          -- Linters
          "eslint_d",
          "shellcheck",
        },
      })
    end,
  },
}

