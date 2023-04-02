local status_ok, saga = pcall(require, "lspsaga")
if not status_ok then
	return
end

saga.setup({
	symbol_in_winbar = {
		separator = " ⯈ ",
	},
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	finder_action_keys = {
		open = "<cr>",
	},
	definition_action_keys = {
		edit = "<cr>",
	},
})
