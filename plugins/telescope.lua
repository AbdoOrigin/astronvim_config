return {
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
}
