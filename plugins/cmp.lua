return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  opts = {
    completion = {
      completeopt = "menu,menuone,noinsert",
    },
    mapping = {
      ["<C-y>"] = require("cmp").mapping.confirm { select = false },
    },
    -- remove summary of docs boilerplate and remove overlapping bug of docs and cmp menu
    -- by making the docs on the right
    formatting = {
      format = function(entry, vim_item)
        vim_item.menu = ""
        if vim.tbl_contains({ "path" }, entry.source.name) then
          local icon, hl_group = require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
          if icon then
            vim_item.kind = icon
            vim_item.kind_hl_group = hl_group
            return vim_item
          end
        end
        return require("lspkind").cmp_format { with_text = false }(entry, vim_item)
      end,
    },
  },
}
