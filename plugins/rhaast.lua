-- if true then return {} end

return {
  { "simrat39/rust-tools.nvim", lazy = true }, -- add lsp plugin
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      config = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = { command = "check", extraArgs = {} },
            },
          },
        },
      },
      setup_handlers = {
        -- add custom handler
        rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" }, -- automatically install lsp
    },
  },
}
