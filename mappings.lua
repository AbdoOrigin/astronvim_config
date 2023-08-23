-- TODO: make luasnip cofirm choices with c_y and c_j
-- && make telescope cycle choices with c_n && c_p
-- && cyclehistory with c_j && c_k
-- Did the Telescope thing LET'S GOOOOOOOOO!!!
--
--
--
-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- {
    --   "nvim-neo-tree/neo-tree.nvim",
    --   opts = function()
    --     mappings = {
    --       ["<leader>e"] = { "<leader>o" },
    --     }
    --   end,
    -- },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<leader>o"] = false,
    ["<leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "toggle neotreez" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>p"] = { '"_dP', desc = "blackhole delete and paste" },
    ["<leader>d"] = { '"_d', desc = "blackhole delete and paste" },
    ["<leader>o"] = { "<cmd>ToggleTerm<cr>", desc = "toggle termz" },

    -- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- ["<C-H>"] = { "<C-w>", desc = "better ctrl escape" },
    ["<C-j>"] = { "<cr>", desc = "better enter", remap = true },
    -- ["<C-J>"] = { "<CR>", remap}
    -- ["<C-j>"] = { "<cr>" },
    -- ["<C-j>"] = { "<cr>", desc = "better enter" },
    -- ["<C-bs>"] = { "<C-w>" } ,
    -- ["<C-j>"] = {
    --   function()
    --     require("telescope.actions").move_selection_next(0)
    --   end,
    --   desc = "please work",
    -- },
    -- ["<C-k>"] = {
    --   function()
    --     require("telescope.actions").move_selection_previous(0)
    --   end,
    --   desc = "please work 2",
    -- },
    -- TODO: send this to astronvim discord serever & tell them
    -- that you want to disable j & k to work cycle history instead of cycle next
  },
  v = {
    ["<leader>p"] = { '"_dP', desc = "blackhole delete and paste" },
    ["<leader>d"] = { '"_d', desc = "blackhole delete and paste" },
  },
}
