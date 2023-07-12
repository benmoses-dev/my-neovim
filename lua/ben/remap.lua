vim.g.mapleader = " "

-- view parent directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor inplace when appending from below
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle of the screen when page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle of the screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- don't overwrite clipboard when pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- yank to the end of the line instead of the whole line
vim.keymap.set("n", "Y", "y$")

-- yank into the system clipboard instead of vim clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

-- format the buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set({"n", "v"}, "Q", "gq")

vim.keymap.set("n", "<leader>h", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>lprev<CR>zz")

-- search and replace all occurrences of the current word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>s", [[:%s/\<\>//gc<Left><Left><Left><Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- d = *cut
-- <leader>d = delete
-- y = *copy
-- <leader>y = +copy
-- p/P = *paste
-- <leader>p = *overwrite
-- ctrl+shift v = +paste

