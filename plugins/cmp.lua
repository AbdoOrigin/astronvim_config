return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    return require("astronvim.utils").extend_tbl(opts, {
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
        ["<C-y>"] = cmp.mapping.confirm { select = false },
      },
    })
  end,
}
