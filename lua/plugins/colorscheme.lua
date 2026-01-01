return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      require("tokyonight").setup({
        style = "night",      -- storm | night | moon | day
        transparent = true,  -- true = fundo transparente
        terminal_colors = true,

        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },

        sidebars = { "qf", "help", "terminal", "packer" },
        dim_inactive = false, -- escurece janelas inativas

        lualine_bold = true,  -- títulos mais marcados no lualine
      })

      vim.cmd.colorscheme("tokyonight")
    end,
  },
}

