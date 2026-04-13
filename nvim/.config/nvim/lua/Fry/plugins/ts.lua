return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts_config = require("nvim-treesitter.configs")

        ts_config.setup({
            -- A list of parser names, or "all"
            ensure_installed = {
                "vimdoc", "c", "lua", "rust", "bash"
            },
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
