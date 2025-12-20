vim.pack.add({
	{ src = "https://github.com/mfussenegger/nvim-lint" },
})

require("lint").linters_by_ft = {
	systemverilog = { "verilator" },
	verilog = { "verilator" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
