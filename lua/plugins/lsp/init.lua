return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
         vim.filetype.add({
             extension = {
               cr = "crystal",
             },
           })
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
                "ts_ls",
                "bashls",
                "jsonls",
                "pyright",
                "rust_analyzer",
                "gopls"
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
        vim.lsp.config("lua_ls", {
          capabilities = capabilities,
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim", "require" } },
            },
          },
        })
        vim.lsp.config("crystalline", {
          cmd = { "crystalline", "--stdio" },
          filetypes = { "crystal" },
          root_dir = vim.fs.root(0, {
            "shard.yml",
            ".git",
          }) or vim.fn.getcwd(),
          capabilities = capabilities,
        })
        vim.lsp.config("gopls", {
          capabilities = capabilities,
          settings = {
            gopls = { gofumpt = true },
          },
        })
        
        vim.lsp.enable({
          "lua_ls",
          "gopls",
          "crystalline",
        })
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

