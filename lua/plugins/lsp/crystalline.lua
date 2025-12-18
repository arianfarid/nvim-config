vim.lsp.config("crystalline", {
  cmd = { "crystalline", "--stdio" },
  filetypes = { "crystal" },
  root_dir = vim.fs.root(0, {
    "shard.yml",
    ".git",
  }),
})

