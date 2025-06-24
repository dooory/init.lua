vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.scrolloff = 10

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.mouse = 'a'

vim.opt.clipboard = "unnamedplus"

vim.o.cursorline = true

vim.api.nvim_create_autocmd('ModeChanged', {
	pattern = "*:i|R",
	desc = "Disables relativenumber in insert and replace mode",
	callback = function()
		vim.o.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd('ModeChanged', {
	pattern = "i|R:*",
	desc = "Enables relativenumber when switching from insert-mode to any other mode",
	callback = function()
		vim.o.relativenumber = true
	end,
})
