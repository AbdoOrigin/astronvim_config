-- TODO: Test
-- HACK: asdfa
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "CRAG666/code_runner.nvim",
    event = "User AstroFile",
    config = function()
      require("code_runner").setup {
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          -- python = "python3 -u",
          -- typescript = "deno run",
          cpp = {
            "cd $dir &&",
            "g++ $fileName &&",
            "./a.out",
          },
          rust = {
            "cd $dir &&",
            "cargo run $fileName",
            -- "rustc $fileName &&",
            -- "$dir$fileNameWithoutExt",
          },
        },
      }
    end,
    -- cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>r", "<cmd>RunCode<cr>",  desc = "Run code" },
      { "<leader>i", "<cmd>RunClose<cr>", desc = "Run close" },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    --   require("todo-comments").setup {
    --     -- your configuration comes here
    --     -- or leave it empty to use the default settings
    --     -- refer to the configuration section below
    --   }
    -- end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
}
