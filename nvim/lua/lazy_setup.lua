require("lazy").setup({
	{
		"AstroNvim/AstroNvim",
		version = "^4", -- Remove version tracking to elect for nightly AstroNvim
		import = "astronvim.plugins",
		opts = { -- AstroNvim options must be set here with the `import` key
			mapleader = " ", -- This ensures the leader key must be configured before Lazy is set up
			maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
			icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
			pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
			update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
		},
	},
	{ import = "community" },
	{ import = "plugins" },
} --[[@as LazySpec]], {
	-- Configure any other `lazy.nvim` configuration options here
	install = { colorscheme = { "astrotheme", "habamax", "ray-x/aurora" } },
	ui = { backdrop = 100 },
	performance = {
		rtp = {
			-- disable some rtp plugins, add more to your liking
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"zipPlugin",
			},
		},
	},
	-- lazy
	{
		"ray-x/aurora",
		init = function()
			vim.g.aurora_italic = 1
			vim.g.aurora_transparent = 1
			vim.g.aurora_bold = 1
		end,
		config = function()
			vim.cmd.colorscheme("aurora")
			-- override defaults
			vim.api.nvim_set_hl(0, "@number", { fg = "#e933e3" })
		end,
	},
} --[[@as LazyConfig]])
