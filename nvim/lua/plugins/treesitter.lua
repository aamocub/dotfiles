vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }
})

require('nvim-treesitter').setup()

-- require('nvim-treesitter').install({ "rust", "c", "bash", "bibtex", "cmake", "commonlisp", "cpp", "csv", "diff", "disassembly", "dockerfile", "doxygen", "haskell", "json", "toml", "lua", "markdown", "meson", "ninja", "nix", "python", "regex", "tcl", "tmux", "tsx", "systemverilog", "typst", "vhdl", "vim", "vimdoc", "xml", "yaml", "zig", "zsh" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})
