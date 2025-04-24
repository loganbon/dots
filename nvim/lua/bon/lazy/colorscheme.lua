return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- require("everforest").setup({
    --   everforest_background = "soft",
    --   italics = true,
    -- })
    vim.g.everforest_background = "soft"
    vim.g.everforest_better_performance = 1
    vim.g.everforest_transparent_background = 1
    vim.cmd([[ colorscheme everforest ]])
    vim.cmd([[
      hi! link LazyNormal Grey
      hi! link LazyButton Grey
    ]])
  end,
}
