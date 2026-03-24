vim.pack.add({
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.8") },
})

require("blink-cmp").setup({
	keymap = {
		preset = "enter",
		["<c-j>"] = { "select_next", "fallback" },
		["<c-k>"] = { "select_prev", "fallback" },
		["<tab>"] = { "snippet_forward", "fallback" },
		["<s-tab>"] = { "snippet_backward", "fallback" },
		["<C-space>"] = { "show_documentation", "hide_documentation", "fallback" },
	},
	signature = { enabled = true },
	completion = {
		trigger = {
			show_on_backspace = true,
			show_on_backspace_in_keyword = true,
			show_on_insert = true,
		},
		list = {
			preselect = false,
		},
	},
})
