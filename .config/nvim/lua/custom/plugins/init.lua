-- ⚠️ NOT IN KICKSTART.NVIM: All plugins below are custom additions (kickstart returns empty table)
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
--
-- See the kickstart.nvim README for more information
return {
	-- File Explorer in Vim Ctrl+f
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	-- Use Ctrl+fp to list recent git projects
	"ahmedkhalf/project.nvim",
	-- alpha dashboard
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	-- Colorscheme
	--
	-- {
	-- 	"lunarvim/synthwave84.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("synthwave84")
	-- 	end,
	-- },
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
	"jvgrootveld/telescope-zoxide",
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("kanagawa").setup({
	-- 			compile = false,
	-- 			undercurl = true,
	-- 			commentStyle = { italic = false },
	-- 			functionStyle = {},
	-- 			keywordStyle = { italic = false },
	-- 			statementStyle = { bold = true },
	-- 			typeStyle = {},
	-- 			transparent = false,
	-- 			dimInactive = false,
	-- 			terminalColors = true,
	-- 			colors = {
	-- 				palette = {},
	-- 				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	-- 			},
	-- 			theme = "wave",
	-- 			background = {
	-- 				dark = "wave",
	-- 				light = "lotus",
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("kanagawa")
	-- 	end,
	-- },
	"emacs-grammarly/lsp-grammarly",
	-- Quick word search under cursor alt+p and alt+n
	"RRethy/vim-illuminate",
	-- Titus Custom
	"postfen/clipboard-image.nvim",
	"mbbill/undotree",
	--"wakatime/vim-wakatime",
	"Pocco81/auto-save.nvim",
	"Pocco81/true-zen.nvim",
	"lambdalisue/suda.vim",
	"github/copilot.vim",
	"mfussenegger/nvim-lint",
	-- Base64 encode/decode selected text
	{
		"taybart/b64.nvim",
		keys = {
			{ "<leader>64e", function() require("b64").encode() end, mode = "v", desc = "Base64 encode selection" },
			{ "<leader>64d", function() require("b64").decode() end, mode = "v", desc = "Base64 decode selection" },
		},
	},
	-- Neominimap
	{
		"Isrothy/neominimap.nvim",
		version = "v3.*.*",
		enabled = true,
		lazy = false,
		init = function()
			vim.opt.wrap = false
			vim.opt.sidescrolloff = 36
			vim.g.neominimap = {
				auto_enable = true,
				-- Enable default keybindings
				click = {
					enabled = true,
				},
			}
		end,
		keys = {
			{ "<leader>nm", "<cmd>Neominimap Toggle<cr>", desc = "Toggle minimap" },
			{ "<leader>no", "<cmd>Neominimap on<cr>", desc = "Enable minimap" },
			{ "<leader>nc", "<cmd>Neominimap off<cr>", desc = "Disable minimap" },
			{ "<leader>nr", "<cmd>Neominimap refresh<cr>", desc = "Refresh minimap" },
			{ "<leader>nf", "<cmd>Neominimap focus<cr>", desc = "Focus minimap" },
			{ "<leader>ns", "<cmd>Neominimap toggleFocus<cr>", desc = "Toggle minimap focus" },
		},
	},
	}
