local telescope = require('telescope')
local builtin = require('telescope.builtin')

-- Telescope configuration

telescope.setup({
	pickers = {
		find_files = {
            -- use find_files to show all files (including ignored and hidden files)
            -- use git_files instead to show all tracked files (respects .gitignore, shows only tracked dotfiles)
			find_command = { "fdfind", "--type", "f", "--strip-cwd-prefix", "--hidden", "--no-ignore", "--exclude", "**/.git/*" },
		},
	},
})

-- Standard Keymaps

-- Project files (all files)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Project live ripgrep
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

-- Project ripgrep
vim.keymap.set('n', '<leader>prg', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Git Integration

-- Project git files (respects git ignore)
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

-- Project git diff
vim.keymap.set('n', '<leader>pd', builtin.git_status, {})

-- Project git commits
vim.keymap.set('n', '<leader>pc', builtin.git_commits, {})

-- Project git branches
vim.keymap.set('n', '<leader>pb', builtin.git_branches, {})

-- Project git stash
vim.keymap.set('n', '<leader>ps', builtin.git_stash, {})

-- Other Keymaps

-- View telescope commands
vim.keymap.set('n', '<leader>pt', builtin.builtin, {})

-- View helptags
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

-- View planets...
vim.keymap.set('n', '<leader>pp', builtin.planets, {})

