local lsp = require('lsp-zero').preset({ name = 'recommended' })

lsp.on_attach(function(client, bufnr)
    -- Setup default behaviour to begin with
    lsp.default_keymaps({ buffer = bufnr })

    -- Modify default keymaps below
    local opts = {buffer = bufnr, remap = false}

    -- Use telescope to view references
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = true })

    -- Go to definition
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

    -- Display hover information
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

    -- View next or previous lsp diagnostic
    vim.keymap.set("n", "<leader>vn", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>vp", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

    vim.keymap.set("n", "<leader>vw", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)

    -- Refactor the current symbol (rename all references)
    vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.rename() end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- Use p and n to select previous and next item in the list
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),

        -- Use `ctrl y` to confirm completion
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),

        -- Do not use tabs or up and down arrows for selection
        ['<Tab>'] = nil,
        ['<S-Tab>'] = nil,
        ['<Up>'] = nil,
        ['<Down>'] = nil,

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

