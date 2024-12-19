local lspconfig = require("lspconfig")

lspconfig.gdscript.setup({
    cmd = { "godot-wsl-lsp" },
})