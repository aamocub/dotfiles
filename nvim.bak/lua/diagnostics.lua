vim.diagnostic.enable = true

vim.diagnostic.config({
	virtual_lines = {
		current_line = true,
	},
	virtual_text = {
		current_line = false,
		spacing = 1,
	},
	underline = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "E",
			[vim.diagnostic.severity.WARN] = "W",
		},
	},
	update_in_insert = true,
})
