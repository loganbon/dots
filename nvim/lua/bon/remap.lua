local which_key = require("which-key")
local builtin = require("telescope.builtin")

which_key.add({
  {
    "<leader>s",
    ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
    desc = "Search and replace word under cursor"
  },
  { "J", "mzJ`z", desc = "Join lines and keep cursor position" },
  { "N", "Nzzzv", desc = "Previous search result and center" },
  { "n", "nzzzv", desc = "Next search result and center" },

  { "<leader>f", group = "Find" },
  { "<leader>ff", builtin.find_files, desc = "Find files" },
  { "<leader>fg", builtin.git_files, desc = "Find git files" },
  { "<leader>fl", builtin.live_grep, desc = "Live grep" },

  {
    mode = { "i" },
    { "kj", "<ESC>", desc = "Escape the insert" },
  },
  {
    mode = { "n" },
    { "<leader>L", ":Lazy<CR>", desc = "Lazy" },
    { "<leader>j", "<C-W>h", desc = "Window left" },
    { "<leader>l", "<C-W>l", desc = "Window left" },
    { "<leader>o", ":on<CR>", desc = "Window focus" },
  },
  {
    mode = { "v" },
    { "<", "<gv", desc = "Dedent visual" },
    { ">", ">gv", desc = "Indent visual" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move selection down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move selection up" },
  },
})

