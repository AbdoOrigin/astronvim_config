return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  {
    "ThePrimeagen/harpoon",
    -- local prefix = "<leader><leader>"
    --
    event = "VeryLazy",
    keys = {
      -- { prefix, desc = "Harpoon" },
      -- { prefix .. "a", function() require("harpoon.mark").add_file() end, desc = "Add file" },
      -- { prefix .. "e", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu" },
      { "<leader>a", function() require("harpoon.mark").add_file() end,        desc = "Add file, faster" },
      { "<C-e>",     function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu faster" },
      { "<C-h>",     function() require("harpoon.ui").nav_file(1) end,         desc = "1" },
      { "<C-j>",     function() require("harpoon.ui").nav_file(2) end,         desc = "2" },
      { "<C-k>",     function() require("harpoon.ui").nav_file(3) end,         desc = "3" },
      { "<C-l>",     function() require("harpoon.ui").nav_file(4) end,         desc = "4" },
      -- { "<C-j>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
      -- { "<C-k>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },
      -- { prefix .. "m", "<cmd>Telescope harpoon marks<CR>", desc = "Show marks in Telescope" },
    },
  },
}
