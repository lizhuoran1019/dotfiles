return {
	{
		"navarasu/onedark.nvim",
	},

	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").setup()
		end,
	},

	{
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"phaazon/hop.nvim",
		event = "BufRead",
		config = function()
			require("hop").setup()
			vim.api.nvim_set_keymap("n", ";c", "<cmd>HopChar2<cr>", { silent = true })
			vim.api.nvim_set_keymap("n", ";w", "<cmd>HopWord<cr>", { silent = true })
			vim.api.nvim_set_keymap("n", ";l", "<cmd>HopLineStart<cr>", { silent = true })
			vim.api.nvim_set_keymap("v", ";c", "<cmd>HopChar2<cr>", { silent = true })
			vim.api.nvim_set_keymap("v", ";w", "<cmd>HopWord<cr>", { silent = true })
			vim.api.nvim_set_keymap("v", ";l", "<cmd>HopLineStart<cr>", { silent = true })
		end,
	},

	{
		"kevinhwang91/nvim-hlslens",
		config = function()
			require("hlslens").setup()
		end,
	},

	{
		"keaising/im-select.nvim",
		config = function()
			require("im_select").setup()
		end,
	},
	{
		"Kohirus/cppassist.nvim",
		opt = true,
		ft = { "h", "cpp", "hpp", "c", "cc", "cxx" },
		config = function()
			require("cppassist").setup()
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }
			-- switch between source and header
			map("n", "<A-o>", "<Cmd>SwitchSourceAndHeader<CR>", opts)
			-- -- generate the function definition or static variable definition in source
			-- map("n", "<leader>cf", "<Cmd>ImplementInSource<CR>", opts)
			-- -- generate the function definition or static variable definition in source in visual mode
			-- map("v", "<leader>cf", '<Cmd>lua require("cppassist").ImplementInSourceInVisualMode<CR>', opts)
			-- -- generate the function definition or static variable definition in header
			-- map("n", "<leader>cv", "<Cmd>ImplementOutOfClass<CR>", opts)
			-- -- goto the header file
			-- map("n", "<leader>gh", "<Cmd>GotoHeaderFile<CR>", opts)
		end,
	},

	{
		"chentoast/marks.nvim",
		config = function()
			require("marks").setup({
				-- whether to map keybinds or not. default true
				default_mappings = true,
				-- which builtin marks to show. default {}
				builtin_marks = { ".", "<", ">", "^" },
				-- whether movements cycle back to the beginning/end of buffer. default true
				cyclic = true,
				-- whether the shada file is updated after modifying uppercase marks. default false
				force_write_shada = false,
				-- how often (in ms) to redraw signs/recompute mark positions.
				-- higher values will have better performance but may cause visual lag,
				-- while lower values may cause performance penalties. default 150.
				refresh_interval = 250,
				-- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
				-- marks, and bookmarks.
				-- can be either a table with all/none of the keys, or a single number, in which case
				-- the priority applies to all marks.
				-- default 10.
				sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
				-- disables mark tracking for specific filetypes. default {}
				excluded_filetypes = {},
				-- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
				-- sign/virttext. Bookmarks can be used to group together positions and quickly move
				-- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
				-- default virt_text is "".
				bookmark_0 = {
					sign = "⚑",
					virt_text = "hello world",
					-- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
					-- defaults to false.
					annotate = false,
				},
				mappings = { set = false },
			})
		end,
	},
}
