vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/ibhagwan/fzf-lua" }
})

require('fzf-lua').setup({
	{ "fzf-native", "hide" },
	file_ignore_patterns = { ".git/*" },
	files = {
		cwd_prompt = false,
		prompt = "Files> ",
	},
	live_grep = {
		exec_empty_query = true,
		prompt = "LiveGrep> ",
		input_prompt = "LiveGrep> ",
	},
	winopts = {
		preview = { default = "bat" },
	}
})

vim.keymap.set({ 'n' }, "<leader><space>", function() require('fzf-lua').files() end)
vim.keymap.set({ 'n' }, "<leader>.", function() require('fzf-lua').files() end)
vim.keymap.set({ 'n' }, "<leader>s", function() require('fzf-lua').live_grep() end)
vim.keymap.set({ 'n' }, "<leader>,", function() require('fzf-lua').buffers() end)

vim.keymap.set({ 'n' }, "<leader>lr", function() require('fzf-lua').lsp_references() end)
vim.keymap.set({ 'n' }, "<leader>ld", function() require('fzf-lua').lsp_definitions() end)
vim.keymap.set({ 'n' }, "<leader>ls", function() require('fzf-lua').lsp_live_workspace_symbols() end)
