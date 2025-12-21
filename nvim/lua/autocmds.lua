vim.api.nvim_create_autocmd("FileType", {
	desc = "Disable expandtab option on Makefiles so that tabs are used instead of spaces",
	pattern = "make",
	callback = function()
		vim.opt.expandtab = false
	end,
})
