local M = {}

M.setup = function()
    local signs = {
        { name = "DiagnosticSignError", text = "e" },
        { name = "DiagnosticSignWarn", text = "w" },
        { name = "DiagnosticSignHint", text = "h" },
        { name = "DiagnosticSignInfo", text = "i" },
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end

    local config = {
        virtual_text = true,
        signs = { active = signs },
        severity_sort = true,
    }

    vim.diagnostic.config(config)
end

M.on_attach = function(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
    return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M

