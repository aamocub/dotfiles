require("plugins.gruber-darker")
require("plugins.naysayer")

--[[ TODO:
	[x] Sane options
	[x] Autopairs
	[x] File finder
	[x] Tree-sitter
	[~] Buffer management
	[x] LSP + Autocompletion
	[x] Linter
	[x] Formatting
	[x] Git?
	[x] Keybindings
	[?] Custom status line
--]]

require("opts")

require("plugins.autopairs")
require("plugins.fzf")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.conform")
require("plugins.lint")
require("plugins.git")
require("diagnostics")
