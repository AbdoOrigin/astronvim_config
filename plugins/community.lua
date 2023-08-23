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
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  {
    "olimorris/onedarkpro.nvim",
    opts = {
      options = {
        transparency = true,
      },
    },
  },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.media.presence-nvim" },
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      -- client_id = "1009122352916857003", -- astrovim
      -- client_id = "1113844253530013776", --neovim
      auto_update = true,
      neovim_image_text = "notepad",
      buttons = false,
      main_image = "file",
      file_assets = {
        rs = {
          "Rust",
          "https://static.wikia.nocookie.net/logopedia/images/c/c4/Notepad_Vista_10.png/revision/latest?cb=20181031102045",
        },
        cpp = {
          "notepad",
          "https://static.wikia.nocookie.net/logopedia/images/c/c4/Notepad_Vista_10.png/revision/latest?cb=20181031102045",
        },
        lua = {
          "Lua",
          "https://static.wikia.nocookie.net/logopedia/images/c/c4/Notepad_Vista_10.png/revision/latest?cb=20181031102045",
        },
      },

      editing_text = function(filename) -- filename arg doesn't need to be used here
        -- Determine type of file using vim's &filetype variable
        local filetype = vim.bo.filetype:gsub("^%l", string.upper)
        return string.format("%s.txt", filetype)
      end,

      -- Rich Presence text options
      -- editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
      -- file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
      -- git_commit_text = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
      -- plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
      -- reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
      workspace_text = "Working on deez", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      -- line_number_text = "Line %s out of %s",
    },
  },
  {
    "ThePrimeagen/harpoon",
    -- local prefix = "<leader><leader>"
    --
    event = "VeryLazy",
    keys = {
      -- { prefix, desc = "Harpoon" },
      -- { prefix .. "a", function() require("harpoon.mark").add_file() end, desc = "Add file" },
      -- { prefix .. "e", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu" },
      { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Add file, faster" },
      -- { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu faster" },
      -- { "<C-h>", function() require("harpoon.ui").nav_file(1) end, desc = "1" },
      -- { "<C-j>", function() require("harpoon.ui").nav_file(2) end, desc = "2" },
      -- { "<C-k>", function() require("harpoon.ui").nav_file(3) end, desc = "3" },
      -- { "<C-l>", function() require("harpoon.ui").nav_file(4) end, desc = "4" },
      -- { "<C-j>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
      -- { "<C-k>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },
      -- { prefix .. "m", "<cmd>Telescope harpoon marks<CR>", desc = "Show marks in Telescope" },
    },
  },
}
