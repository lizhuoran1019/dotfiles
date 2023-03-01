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
}
