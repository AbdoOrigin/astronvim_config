return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "           ▄ ▄                   ",
        "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
        "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
        "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
        "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
        "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
        "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
        "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
        "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
      }
      return opts
    end,
  },
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },
  --
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip"(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
    end,
  },
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      -- local npairs = require "nvim-autopairs"
      -- local Rule = require "nvim-autopairs.rule"
      -- local cond = require "nvim-autopairs.conds"

      require("nvim-autopairs").setup {
        map_c_w = true,
        map_c_h = true,
      }
      -- mappings {
      --
      -- }

      -- npairs.add_rules(
      --   {
      --     Rule("$", "$", { "tex", "latex" })
      --       -- don't add a pair if the next character is %
      --       :with_pair(cond.not_after_regex "%%")
      --       -- don't add a pair if  the previous character is xxx
      --       :with_pair(
      --         cond.not_before_regex("xxx", 3)
      --       )
      --       -- don't move right when repeat character
      --       :with_move(cond.none())
      --       -- don't delete if the next character is xx
      --       :with_del(cond.not_after_regex "xx")
      --       -- disable adding a newline when you press <cr>
      --       :with_cr(cond.none()),
      --   },
      --   -- disable for .vim files, but it work for another filetypes
      --
      --   Rule("a", "a", "-vim")
      -- )
    end,
  },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require "telescope.actions"

      return require("astronvim.utils").extend_tbl(opts, {
        defaults = {
          -- prompt_prefix = " λ  ",
          mappings = {
            i = {
              -- jk = require("telescope.actions").close,
              ["<C-j>"] = actions.cycle_history_next,
              ["<C-k>"] = actions.cycle_history_prev,
              ["<C-n>"] = actions.move_selection_next,
              ["<C-p>"] = actions.move_selection_previous,
            },
          },
        },
      })
    end,
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --
  --   config = function()
  --     require("neo-tree").setup {
  --       window = {
  --         position = "float",
  --         -- width = 40,
  --         mappings = {
  --           ["<space>"] = false, -- disable space until we figure out which-key disabling
  --           ["[b"] = "prev_source",
  --           ["]b"] = "next_source",
  --           o = "open",
  --           O = "system_open",
  --           h = "parent_or_close",
  --           l = "child_or_open",
  --           Y = "copy_selector",
  --         },
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   -- override the options table that is used in the `require("cmp").setup()` call
  --   opts = function(_, opts)
  --     -- opts parameter is the default options table
  --     -- the function is lazy loaded so cmp is able to be required
  --     local cmp = require "cmp"
  --     -- modify the mapping part of the table
  --     -- opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
  --     opts.mapping["<C-Y"] = cmp.confirm { select = false }
  --
  --
  --     -- return the new table to be used
  --     return opts
  --   end,
  -- },
  -- {
  --   "mrjones2014/smart-splits.nvim",
  --   require('smart-splits').setup({
  --     -- Ignored filetypes (only while resizing)
  --     -- resize mode options
  --     resize_mode = {
  --       resize_keys = {},
  --       -- set to true to silence the notifications
  --       -- when entering/exiting persistent resize mode
  --     },
  --   })
  -- }
}
