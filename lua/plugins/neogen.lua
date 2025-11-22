return { 
    "danymat/neogen", 
    config = function ()
        require('neogen').setup({
            snippet_engine = "luasnip"
        })
        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<leader>nd", "<cmd>Neogen<CR>", {
          desc = "Generate docs for current node",
        })

        vim.keymap.set("n", "<leader>nf", "<cmd>Neogen func<CR>", {
          desc = "Generate function documentation",
        })

        vim.keymap.set("n", "<leader>nc", "<cmd>Neogen class<CR>", {
          desc = "Generate class documentation",
        })

        vim.keymap.set("n", "<leader>nt", "<cmd>Neogen type<CR>", {
          desc = "Generate type documentation",
        })
    end,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*" 
}
