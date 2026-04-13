return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗"
                        },
                        border = "rounded",
                    }
                }
            },
            {
                "WhoIsSethDaniel/mason-tool-installer.nvim",
                opts = {
                        ensure_installed = {
                            "lua_ls",
                            "clangd",
                        }
                },
                dependencies = {"mason-org/mason.nvim"}
            },
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                    handlers = {
                        function(server_name)
                            require("lspconfig")[server_name].setup({})
                            
                        end,
                    }
                }
            },
            { "saghen/blink.cmp" }
        }
    }
}
