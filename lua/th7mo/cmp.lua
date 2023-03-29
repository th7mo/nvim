local status_ok_cmp, cmp = pcall(require, "cmp")
if not status_ok_cmp then
    return
end

local status_ok_luasnip, luasnip = pcall(require, "luasnip")
if not status_ok_luasnip then
    return
end

local status_ok_lspkind, lspkind = pcall(require, "lspkind")
if not status_ok_lspkind then
    return
end

-- load friendly snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),         -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(),
        ["<cr>"] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }),
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
        }),
    },
})

