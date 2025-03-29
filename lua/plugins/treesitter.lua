return {
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = {"html", "lua", "rust", "yaml", "php", "blade"}, -- Instalar linguagens mantidas
				highlight = { enable = true },    -- Ativar o destaque de sintaxe
				indent = { enable = true },       -- Ativar indentação com treesitter
			}
		end
	}
}
