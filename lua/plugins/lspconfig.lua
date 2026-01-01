return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

            lspconfig.intelephense.setup({})
            lspconfig.lua_ls.setup({})
			-- Exemplo com rust_analyzer
			lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						cargo = { allFeatures = true },
						checkOnSave = {
							command = "clippy",
						},
					},
				},
			})
		end,
	}
}
