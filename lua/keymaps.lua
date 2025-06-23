vim.keymap.set("n", "-", vim.cmd.Ex)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {
		clear = true
	}),
	callback = function()
		vim.hl.on_yank()
	end,
})
