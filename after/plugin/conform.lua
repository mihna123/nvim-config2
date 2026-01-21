local conform = require("conform");

conform.setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        vue = { "prettier" },
        python = { "autopep8", lsp_format = "first" }
    },
    format_on_save = function(bufnr)
        if vim.b[bufnr].disable_autoformat then
            return
        end
        return {
            timeout_ms = 1500,
            lsp_format = "fallback",
            stop_after_first = false,
        }
    end,
    default_format_opts = {
        lsp_format = "fallback"
    },
})

-- Command to save without formatting (when I need to do some custom fixes)
vim.api.nvim_create_user_command("W", function()
    vim.b.disable_autoformat = true
    vim.cmd("write")
    vim.b.disable_autoformat = false
end, {})
