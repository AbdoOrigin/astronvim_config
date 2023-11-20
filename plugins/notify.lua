return {
  {
    "nvim-notify",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        stages = "slide",
        timeout = 100,
      })
    end,
    -- opts = {
    --   stages = "slide",
    --   timeout = 3000,
    --   fps = 60,
    -- },
  },
}
