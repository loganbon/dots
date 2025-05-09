return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    -- local keymaps = {
    --   mode = { "n", "v" },
    --   ["g"] = { name = "+goto" },
    --   ["gz"] = { name = "+surround" },
    --   ["]"] = { name = "+next" },
    --   ["["] = { name = "+prev" },
    --   ["<leader><tab>"] = { name = "+tabs" },
    --   ["<leader>b"] = { name = "+buffer" },
    --   ["<leader>c"] = { name = "+code/config" },
    --   ["<leader>f"] = { name = "Find Files" },
    --   ["<leader>ff"] = { name = "+file/find" },
    --   ["<leader>g"] = { name = "+git" },
    --   ["<leader>gh"] = { name = "+hunks" },
    --   ["<leader>q"] = { name = "+quit/session" },
    --   ["<leader>s"] = { name = "+search" },
    --   ["<leader>u"] = { name = "+ui" },
    --   -- ["<leader>w"] = { name = "+windows" },
    --   ["<leader>x"] = { name = "+diagnostics/quickfix" },
    -- }
    -- wk.register(keymaps)
  end,
}

