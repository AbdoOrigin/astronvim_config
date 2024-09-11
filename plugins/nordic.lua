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
      override = {
        CursorLine = {
          bg = "Grey", -- Choose a color you like.
          bold = true, -- Or false.
        },
        Visual = {
          bg = "Grey", -- Choose a color you like.
          bold = true, -- Or false.
        },
      },
    },
  },
}
