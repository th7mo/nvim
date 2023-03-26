local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("th7mo.lsp.lsp-installer")
require("th7mo.lsp.handlers").setup()

