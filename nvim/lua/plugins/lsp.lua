vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

vim.keymap.set({ "n" }, "<leader>lM", "<cmd>Mason<cr>")

-- Lua LSP setup
vim.lsp.enable({ "lua_ls" })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client then
			if client:supports_method("textDocument/completion") then
				vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			end
			if client:supports_method("textDocument/inlayHint") then
				vim.keymap.set("n", "<leader>th", function()
					vim.lsp.inlay_hint.enable(vim.lsp.inlay_hint.is_enabled())
				end)
			end
		end
		vim.keymap.set("i", "<c-space>", vim.lsp.completion.get)
	end,
})
