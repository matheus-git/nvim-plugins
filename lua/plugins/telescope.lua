return {
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
		local telescope = require('telescope')

		  telescope.setup({
		    defaults = {
		      file_ignore_patterns = {
			"^%.",           
			"node_modules/",
			"%.git/",      
			"dist/",      
			"build/",    
			"vendor/"
		      },
		    },
		  })

		  local builtin = require('telescope.builtin')

		  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		  vim.keymap.set('n', '<leader>fgf', builtin.git_files, { desc = 'Telescope git files' })
		  vim.keymap.set('n', '<leader>fgb', builtin.git_branches, { desc = 'Telescope git branches' })
		  vim.keymap.set('n', '<leader>fgs', builtin.git_status, { desc = 'Telescope git status' })
		  vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Telescope colors' })
		end,
	}
}
