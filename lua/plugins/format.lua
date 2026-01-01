return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.pint.with({
          command = "vendor/bin/pint",
        }),

        null_ls.builtins.formatting.prettier,
	null_ls.builtins.formatting.blade_formatter,
      },
    })
  end,
}

