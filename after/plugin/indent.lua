vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_current_context = true,
    use_treesitter = true,
    use_treesitter_scope = true,

    char = '┊',
}
