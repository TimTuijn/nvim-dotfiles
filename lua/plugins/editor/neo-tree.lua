-- NOTE: LazyVim default
return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  init = function() end, -- override init config to not auto-load neo-tree on startup
  keys = {
    {
      "<leader>cs",
      function()
        require("neo-tree.command").execute({ source = "document_symbols", toggle = true })
      end,
      desc = "Document symbols explorer (NeoTree)",
    },

    -- Edit following keybindings because we want to use mini.files
    {
      "<leader>e",
      false,
    },
    {
      "<leader>E",
      false,
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
}
