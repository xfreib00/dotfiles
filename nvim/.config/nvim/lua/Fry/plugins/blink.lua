return {
    {
        "saghen/blink.cmp",
        lazy = false,
        dependencies = {
            "rafamadriz/friendly-snippets"
        },
        version = "v1.*",
        opts = {
            keymap = {
                preset = "enter"
            },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono"
            },
            completion = {
                menu = {
                  border = "rounded",
                  draw = {
                    columns = {
                      { "kind_icon", "label", gap = 1 },
                      { "kind", "source_name", gap = 1 }
                    },
                    components = {
                      source_name = {
                        width = { fill = "true" },
                        text = function(ctx) return "[" .. ctx.source_name .. "]" end,
                        highlight = "BlinkCmpSource",
                      },
                    },
                  },
                },

                documentation = {
                  auto_show = true,
                  auto_show_delay_ms = 250,
                  window = {
                    border = "rounded",
                    max_width = 60,
                    max_height = 20,
                  },
                },
                ghost_text = { enabled = true },
            },
            signature = {
                enabled = true,
                window = { border = "rounded" }
            }
        }
    }
}
