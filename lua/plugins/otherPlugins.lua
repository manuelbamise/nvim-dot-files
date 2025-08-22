return {
	-- Dashboard (custom opening page)
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "doom",
				config = {
					header = { "This is my dojo.." },
					center = {
						{ desc = "Find File", action = "Telescope find_files" },
						{ desc = "Recent Files", action = "Telescope oldfiles" },
						{ desc = "Open Config", action = "edit ~/.config/nvim/init.lua" },
					},
				},
			})
		end,
	},
	-- Telescope (fuzzy finder)
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{ "tf", ":Telescope find_files<CR>", desc = "telescope find files", silent = true },
			{ "tg", ":Telescope live_grep<CR>", desc = "telescope live live_grep", silent = true },
		},
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Treesitter (better syntax highlighting)
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- LSP + Autocomplete
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "L3MON4D3/LuaSnip" },

	-- Git signs
	{ "lewis6991/gitsigns.nvim", config = true },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
