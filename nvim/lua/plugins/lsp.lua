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

-- SystemVerilog/Verilog LSP setup
-- vim.lsp.config("verible", {
-- 	cmd = {
-- 		"verible-verilog-ls",
-- 		"--column_limit=120",
-- 		"--indentation_spaces=4",
-- 		"--rules=+line-length=length:120,-parameter-name-style,+port-name-suffix",
-- 	},
-- 	root_markers = { ".git", "verilator.f" },
-- })
vim.lsp.enable("verible")

local function setkeymaps()
	if package.loaded["fzf-lua"] then
		vim.keymap.set({ "n" }, "<leader>lr", "<cmd>FzfLua lsp_references<cr>", { desc = "LSP references" })
		vim.keymap.set({ "n" }, "<leader>ld", "<cmd>FzfLua lsp_definitions<cr>", { desc = "LSP definitions" })
		vim.keymap.set({ "n" }, "<leader>lD", "<cmd>FzfLua lsp_declarations<cr>", { desc = "LSP declarations" })
	else
		vim.keymap.set({ "n" }, "<leader>lr", function()
			vim.lsp.buf.references()
		end, { desc = "LSP references" })
		vim.keymap.set({ "n" }, "<leader>ld", function()
			vim.lsp.buf.definition()
		end, { desc = "LSP go to definition" })
		vim.keymap.set({ "n" }, "<leader>lD", function()
			vim.lsp.buf.declaration()
		end, { desc = "LSP go to declaration" })
	end
	vim.keymap.set({ "n" }, "<leader>lR", function()
		vim.lsp.buf.rename()
	end, { desc = "LSP rename" })
	vim.keymap.set({ "n" }, "K", function()
		vim.lsp.buf.hover()
	end, { desc = "LSP Hover" })
end

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
		setkeymaps()
	end,
})
