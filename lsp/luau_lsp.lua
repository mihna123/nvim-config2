---@brief
---
--- https://github.com/JohnnyMorganz/luau-lsp
---
--- Language server for the [Luau](https://luau-lang.org/) language.
---
--- `luau-lsp` can be installed by downloading one of the release assets available at https://github.com/JohnnyMorganz/luau-lsp.
---
--- You might also have to set up automatic filetype detection for Luau files, for example like so:
---
--- ```vim
--- autocmd BufRead,BufNewFile *.luau setf luau
--- ```
return {
    cmd = { 'luau-lsp', 'lsp', '--definitions=globalTypes.d.luau' },
    filetypes = { 'luau' },
    root_markers = { '.git' },
    settings = {
        completion = {
            suggestImports = true,
            autocompleteEnd = true,
            imports = {
                enabled = true,
            }
        },
        platform = {
            type = "roblox"
        },
        diagnostics = {
            workspace = true
        }
    }
}
