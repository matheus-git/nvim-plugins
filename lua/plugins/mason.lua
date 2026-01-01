return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { 
                    "rust_analyzer",
                    "lua_ls",
                    "intelephense",
                    "html",
                },
			})
		end,
	}
}
