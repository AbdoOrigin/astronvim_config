-- 🍐
-- both works

-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- return {
--   "windwmp/nvim-autopairs",
--   opts = function(_, opts)
--     opts.map_c_w = true
--     opts.map_c_h = true
--   end,
-- }

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float",
    },
  },
}
