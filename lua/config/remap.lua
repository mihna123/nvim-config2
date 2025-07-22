vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>de", function()
    vim.diagnostic.open_float(0, { scope = "line" })
end)

vim.keymap.set("n", "<leader>fo", function()
    require("conform").format({}, function(err, did_edit)
        if err then
            vim.notify(err, vim.log.levels.ERROR);
        elseif not did_edit then
            vim.notify("No changes made (no formatter available?)", vim.log.levels.WARN);
        end
    end)
end, { desc = "Format buffer with conform" })
