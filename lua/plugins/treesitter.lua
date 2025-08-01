return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "javascript", "lua", "typescript", "html", "css", "python" }
        }
    end,
    additional_vim_regex_highlighting = false
}
