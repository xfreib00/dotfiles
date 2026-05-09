return {
  {
    "saghen/blink.cmp",
    lazy = false,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
    },
    version = "v1.*",
    opts = {
      snippets = {
        preset = 'luasnip',
      },

      keymap = {
        preset = "enter",
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
        kind_icons = {
          Text = "",
          Method = "m",
          Function = "",
          Constructor = "",
          Field = "",
          Variable = "",
          Class = "",
          Interface = "",
          Module = "",
          Property = "",
          Unit = "",
          Value = "",
          Enum = "",
          Keyword = "",
          Snippet = "",
          Color = "",
          File = "",
          Reference = "",
          Folder = "",
          EnumMember = "",
          Constant = "",
          Struct = "",
          Event = "",
          Operator = "",
          TypeParameter = "",
        },
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
                width = { fill = true },
                text = function(ctx)
                  local menu_name = ({
                    lsp = "LSP",
                    snippets = "Snippet",
                    buffer = "Buffer",
                    path = "Path",
                    lua_ls = "NVIM_LUA",
                  })
                  local name = menu_name[ctx.source_name] or ctx.source_name
                  return "[" .. name .. "]"
                end,
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

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      signature = {
        enabled = true,
        window = { border = "rounded" }
      }
    }
  }
}
