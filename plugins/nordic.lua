if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  {
    --   {
    --   "AlexvZyl/nordic.nvim",
    --   -- require("nordic").setup {
    --   transparent_bg = true,
    --   -- },
    -- }
    "AlexvZyl/nordic.nvim",
    -- require("tokyonight").setup {},
    require("nordic").setup {
      transparent_bg = true,
      -- override = {
      --   CursorLine = {
      --     bg = "Grey", -- Choose a color you like.
      --     bold = true, -- Or false.
      --   },
      --   Visual = {
      --     bg = "Grey", -- Choose a color you like.
      --     bold = true, -- Or false.
      --   },
      -- },
    },
  },
}
