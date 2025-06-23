vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.mouse = 'a'

vim.opt.clipboard = "unnamedplus"

vim.o.cursorline = true

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {
		clear = true
	}),
	callback = function()
		vim.hl.on_yank()
	end,
})
