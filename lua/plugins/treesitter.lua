return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "rust",
                    "lua",
                    "php",
                    "blade",
                    "html",
                    "bash",
                    "yaml",
                    "json",
                    "css",
                    "javascript",
                },
                highlight = {
                    enable = true,
                    disable = { "yaml" },
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
            })
        end,
    },
}
