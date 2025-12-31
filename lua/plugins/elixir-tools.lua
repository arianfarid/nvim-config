return {
  "elixir-tools/elixir-tools.nvim",
  tag = "stable", -- Use the stable release
  requires = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("elixir").setup({
      -- Optional: you can explicitly enable elixirls, it is true by default
      elixirls = {
        enable = true,
      },
    })
  end,
}
