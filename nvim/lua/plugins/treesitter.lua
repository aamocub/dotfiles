vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
	indent = {
		enabled = false,
	},
})

-- require('nvim-treesitter').install({ "rust", "c", "bash", "bibtex", "cmake", "commonlisp", "cpp", "csv", "diff", "disassembly", "dockerfile", "doxygen", "haskell", "json", "toml", "lua", "markdown", "meson", "ninja", "nix", "python", "regex", "tcl", "tmux", "tsx", "systemverilog", "typst", "vhdl", "vim", "vimdoc", "xml", "yaml", "zig", "zsh" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "make", "systemverilog", "verilog", "c", "cpp", "rust", "sh", "lua" },
	callback = function(args)
		vim.treesitter.start(args.buf)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
