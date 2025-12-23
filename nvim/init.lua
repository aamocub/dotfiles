if vim.g.vscode then
	require("opts")
else
	require("opts")
	require("plugins.gruber-darker")
	require("plugins.naysayer")
	require("plugins.notify")
	require("autocmds")

	require("plugins.autopairs")
	require("plugins.fzf")
	require("plugins.treesitter")
	require("plugins.lsp")
	require("plugins.completion")
	require("plugins.conform")
	require("plugins.lint")
	require("plugins.git")
	require("diagnostics")
end
