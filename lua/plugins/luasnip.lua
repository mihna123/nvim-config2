return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.4", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        config = function()
            local vscode_loader = require("luasnip.loaders.from_vscode")
            vscode_loader.lazy_load()

            local path = vim.fn.stdpath("config") .. "/my_snippets"
            vscode_loader.lazy_load({ paths = { path } })
        end
    },
}
