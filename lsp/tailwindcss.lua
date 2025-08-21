---@brief
--- https://github.com/tailwindlabs/tailwindcss-intellisense
---
--- Tailwind CSS Language Server can be installed via npm:
---
--- npm install -g @tailwindcss/language-server

---@type vim.lsp.Config
return {
    cmd = { 'tailwindcss-language-server', '--stdio' },
    -- filetypes copied and adjusted from tailwindcss-intellisense
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'vue',
        'svelte',
        'templ',
    },
    root_markers = {
        'tailwind.config.js',
        'tailwind.config.cjs',
        'tailwind.config.mjs',
        'tailwind.config.ts',
        'postcss.config.js',
        'postcss.config.cjs',
        'postcss.config.mjs',
        'postcss.config.ts',
        '.git',

    },
    settings = {
        validate = true,
        lint = {
            cssConflict = 'warning',
            invalidApply = 'error',
            invalidScreen = 'error',
            invalidVariant = 'error',
            invalidConfigPath = 'error',
            invalidTailwindDirective = 'error',
            recommendedVariantOrder = 'warning',
        },
        classAttributes = {
            'class',
            'className',
            'class:list',
            'classList',
            'ngClass',
        },
        includeLanguages = {
            eelixir = 'html-eex',
            elixir = 'phoenix-heex',
            eruby = 'erb',
            heex = 'phoenix-heex',
            htmlangular = 'html',
            templ = 'html',
        },
    },
}
