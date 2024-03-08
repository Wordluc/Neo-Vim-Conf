require('telescope').setup{ file_ignore_patterns = { "./^.git/*","./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*"}, }
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fvv', function()
	builtin.grep_string({search=vim.fn.input("Grep > ")})
end)
vim.keymap.set('v', '<leader>fvv', function()
    vim.cmd('noau normal! "ay"')
    builtin.grep_string({search=vim.fn.getreg("a")})
end)
vim.keymap.set('n', '<leader>fv', builtin.live_grep, {})
