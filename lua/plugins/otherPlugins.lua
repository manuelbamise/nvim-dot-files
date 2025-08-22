return {
	-- Dashboard (custom opening page)
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "hyper",
				config = {
					week_header = { enable = true },
					shortcut = {
						-- action can be a function type
						{
							desc = "",
							group = "highlight group",
							key = "shortcut key",
							action = "action when you press key",
						},
					},
					packages = { enable = true }, -- show how many plugins neovim loaded
					-- limit how many projects list, action when you press key or enter it will run this action.
					-- action can be a function type, e.g.
					-- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
					project = {
						enable = true,
						limit = 8,
						icon = "Past projects",
						label = "",
						action = "Telescope find_files cwd=",
					},
					mru = { enable = true, limit = 10, icon = "Previous files", label = "", cwd_only = false },
					footer = {}, -- footer
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"NStefan002/donut.nvim",
		version = "*",
		lazy = false,
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

	-- add nvim-treesitter
	{ "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },

	-- LSP + Autocomplete
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "L3MON4D3/LuaSnip" },

	-- Git signs
	{ "lewis6991/gitsigns.nvim", config = true },

	--lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "windwp/nvim-ts-autotag" },
}
