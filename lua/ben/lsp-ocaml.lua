require("lspconfig").ocamllsp.setup {
    cmd = { vim.fn.expand("~/.opam/srvstat/bin/ocamllsp") },
}
