local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pg', function()
    local success, res = pcall(vim.fn.input, 'Grep >');
    if not success then
        print(res)
        return;
    end

    if res == '' then return end

    builtin.grep_string({ search = res })
end)
