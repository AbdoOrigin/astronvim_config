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
              -- add f s to open files instead of ff
              -- maybe but nah it's too much work, maybe you could,
              -- but I don't if you should, "cuz you scientiss were so preoccupied
              -- with wether or not you could but didn't stop to think if you could" idk someone said it
              -- oh maybe change f to s
            },
          },
        },
      })
    end,
  },
}
