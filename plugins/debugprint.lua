return {
  "andrewferrier/debugprint.nvim",
  -- Dependency only needed for NeoVim 0.8
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  -- Remove the following line to use development versions,
  -- not just the formal releases
  version = "*",
  opts = {
    -- create_keymaps = false,
    -- create_commands = false,
    -- vim.keymap.set("n", "<Leader>i", function()
    --   -- Note: setting `expr=true` and returning the value are essential
    --   return require("debugprint").debugprint()
    -- end, {
    --   expr = true,
    -- }),
    vim.keymap.set("n", "<Leader>i", function()
      -- Note: setting `expr=true` and returning the value are essential
      return require("debugprint").debugprint { variable = true }
    end, {
      expr = true,
    }),

    -- vim.keymap.set("n", "<leader>o", function() M.deleteprints() end),

    ...,
  },
  -- require("debugprint").setup {
  --   vim.keymap.set("n", "<Leader>i", function()
  --     -- Note: setting `expr=true` and returning the value are essential
  --     return require("debugprint").debugprint()
  --   end, {
  --     expr = true,
  --   }),
  -- },
}
