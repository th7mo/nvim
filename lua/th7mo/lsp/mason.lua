require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").rust_analyzer.setup {
    on_attach = require("th7mo.lsp.handlers").on_attach,
    capabilities = require("th7mo.lsp.handlers").capabilities,
}

