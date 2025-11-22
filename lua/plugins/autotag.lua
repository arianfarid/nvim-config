return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "javascript", "typescript", "typescriptreact", "tsx", "xml" }, 
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
