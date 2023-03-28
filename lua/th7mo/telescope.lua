local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
    return
end

local actions_status_ok, actions = pcall(require, "telescope.actions")
if not actions_status_ok then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
    },
})

