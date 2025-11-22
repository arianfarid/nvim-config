return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    --
    -- 1. Setup Mason
    --
    require("mason").setup()

    --
    -- 2. Mason-LSPConfig: ensure servers are installed
    --
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "bashls",
        "jsonls",
        "pyright",
        "rust_analyzer",
      },
      automatic_installation = true,
    })

    --
    -- 3. Use the new Neovim LSP config API
    --
    local lspconfig = vim.lsp.config

    --
    -- Default capabilities (works fine without cmp)
    --
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    --
    -- 4. Setup each installed server using the new API
    --
  --  for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
    --  local server_config = lspconfig[server] or {}
--
  --    vim.lsp.start({
    --    name = server,
    --    cmd = require("lspconfig")[server].document_config.default_config.cmd,
    --    root_dir = require("lspconfig")[server].document_config.default_config.root_dir,
    --    capabilities = capabilities,
    --    settings = server_config.settings,
    --  })
   -- end

    --
    -- 5. Example override for Lua (recommended)
    --
    --vim.lsp.start({
    -- name = "lua_ls",
    --  cmd = require("lspconfig").lua_ls.document_config.default_config.cmd,
		--  root_dir = require("lspconfig").lua_ls.document_config.default_config.root_dir,
    --  capabilities = capabilities,

    --  settings = {
      --  Lua = {
      --    diagnostics = { globals = { "vim" } },
      --  },
     -- },
   -- })
  end,
}

