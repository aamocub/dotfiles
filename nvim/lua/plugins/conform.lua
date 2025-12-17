vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		systemverilog = { "verible" },
		verilog = { "verible" },
	},
})

-- Verible formatter setup
require("conform").formatters.verible = {
	append_args = { "--inplace", "--indentation_spaces=4", "--column_limit=120" },
}

-- Format on save autocommand
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
