local status_ok_mason, mason = pcall(require, "mason")
if not status_ok_mason then
    return
end

local status_ok_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_mason_lspconfig then
    return
end

local status_ok_mason_null_ls, mason_null_ls = pcall(require, "mason-null-ls")
if not status_ok_mason_null_ls then
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "gopls",
        "lua_ls",
    },
})

mason_null_ls.setup({
    ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
    },
})

