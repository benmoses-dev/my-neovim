local builtin = require('telescope.builtin')

-- Project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Project git diff
vim.keymap.set('n', '<leader>pd', builtin.git_status, {})

-- Project search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Project live search
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

-- Telescope
vim.keymap.set('n', '<leader>pp', builtin.planets, {})

-- Project commits
vim.keymap.set('n', '<leader>pc', builtin.git_commits, {})

-- Project branches
vim.keymap.set('n', '<leader>pb', builtin.git_branches, {})
