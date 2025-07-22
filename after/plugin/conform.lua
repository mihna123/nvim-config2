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
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
        stop_after_first = true,
    },
    default_format_opts = {
        lsp_format = "fallback"
    },
})
