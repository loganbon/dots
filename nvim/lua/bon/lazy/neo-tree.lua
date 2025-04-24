return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "windwp/nvim-spectre",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "filesystem",
          position = "left",
        })
      end,
      desc = "Filesystem",
    },
    {
      "<leader>sr",
      function()
        require("spectre").open()
      end,
      desc = "Replace in files (Spectre)"
    },
    {
      "<leader>r",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "buffers",
          position = "left",
        })
      end,
      desc = "Buffers (root dir)",
    },
    {
      "<leader>g",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "git_status",
          position = "left",
        })
      end,
      desc = "Git Status",
    },
  },

  opts = {
    -- fill any relevant options here
    --
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      --hijack_netrw_behaviour = "open_current",
    },
    window = {
      -- position = "left",
      mappings = {
        ["h"] = function(state)
          local node = state.tree:get_node()
          if node.type == "directory" and node:is_expanded() then
            require("neo-tree.sources.filesystem").toggle_directory(state, node)
          else
            require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          end
        end,
        ["H"] = "close_all_nodes",
        ["l"] = "open",
        ["L"] = "open_vsplit",
        ["<space>"] = "none",
        ["p"] = { "toggle_preview", config = { use_float = true } },
        ["<esc>"] = "revert_preview",
        ["a"] = {
          "add",
          -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
          -- some commands may take optional config options, see `:h neo-tree-mappings` for details
          config = {
            show_path = "relative", -- "none", "relative", "absolute"
          },
        },
        ["d"] = "delete",
        ["r"] = "rename",
        ["y"] = "copy_to_clipboard",
        ["c"] = "copy",
        ["m"] = "move",
        ["q"] = "close_window",
        ["R"] = "refresh",
        ["?"] = "show_help",
        ["<"] = "prev_source",
        [">"] = "next_source",
      },
    },
  },
  -- config = function()
  --   vim.cmd[[
  --     autocmd VimEnter * silent! execute 'Neotree reveal' 
  --     autocmd VimEnter * wincmd p
  --   ]]
  -- end,
}
