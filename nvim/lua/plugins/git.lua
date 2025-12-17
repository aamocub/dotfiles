vim.pack.add({
	{ src = "https://github.com/sindrets/diffview.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/NeogitOrg/neogit" }
})

require('neogit').setup({
	graph_style = "unicode"
})

vim.keymap.set('n', "<leader>g", "<cmd>Neogit<cr>")
