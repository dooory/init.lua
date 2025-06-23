return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-tree/nvim-web-devicons"
	},
	opts = {
		extensions_list = {
			"fzf",
		},
	},
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			desc = "Find Files"
		},
		{
			"<leader>fh",
			"<cmd>Telescope help_tags<CR>", 
			desc = "Search help tags"
		},		
		{ 
			"<leader>fg", 
			"<cmd>Telescope live_grep<CR>", 
			desc = "Live grep" 
		},
		{ 
			"<leader>fc", 
			function()
				require("telescope.builtin").find_files({
					cwd=vim.fn.stdpath("config"),
					results_title="Found config files",
				})
			end, 
			desc = "Find file in nvim config" 
		},
		{
			"<C-p>",
			"<cmd>Telescope git_files<CR>",
			desc = "Search git files",
		}
	},
}
