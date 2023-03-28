local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
    renderer = {
        icons = {
            show = {
                git = false,
                file = false,
                modified = false,
                folder = false,
            },
            glyphs = {
                folder = {
                    arrow_closed = "⯈",
                    arrow_open = "⯆",
                },
            },  
        },
    },
})

