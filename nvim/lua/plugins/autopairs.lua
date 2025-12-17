vim.pack.add({{ src = "https://github.com/windwp/nvim-autopairs" }})

require('nvim-autopairs').setup({ 
	check_ts = true
})

local npairs = require('nvim-autopairs')
local remap = vim.api.nvim_set_keymap

_G.MUtils = {}

vim.g.completion_confirm_key = ""

MUtils.completion_confirm = function()
	if vim.fn.pumvisible() ~= 0 then
		if vim.fn.complete_info()["selected"] ~= -1 then
			require('completion').confirmCompletion()
			return npairs.esc("<c-y>")
		else
			vim.api.nvim_select_popupmenu_item(0, false, false, {})
			require('completion').confirmCompletion()
			return npairs.esc("<c-n><c-y>")
		end
	else
		return npairs.autopairs_cr()
	end
end

remap("i", '<cr>', 'v:lua.MUtils.completion_confirm()', { expr = true, noremap = true })
