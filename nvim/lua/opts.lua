-- Basic settings
vim.opt.number = false
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.smoothscroll = true

-- Text wrapping settings
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.textwidth = 120
vim.opt.linebreak = true

-- Indentation settings
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Visual settings
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"
vim.opt.showmatch = true
vim.opt.cmdheight = 2
vim.opt.completeopt = "menu,menuone,noinsert,noselect,fuzzy,popup"
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 10
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = true

-- File handling settings
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.cache/nvim/undodir")
vim.opt.updatetime = 300
vim.opt.autoread = true

-- Behaviour settings
vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = "indent,eol,start"
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.selection = "exclusive"
vim.opt.mouse = "a"

-- Cursor settings
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Leader key mapping
vim.g.mapleader = " "

-- Create undodir if it doesn't exist

local undodir = vim.fn.expand("~/.cache/nvim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
end

-- Other settings
vim.opt.inccommand = "split"
vim.opt.winborder = "rounded"
