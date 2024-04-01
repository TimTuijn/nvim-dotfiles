return {
  "echasnovski/mini.files",
  opts = {
    options = {
      use_as_default_explorer = true,
    },
    mappings = {
      go_in = "L",
      go_in_plus = "l",
      go_out = "h",
      go_out_plus = "H",
    },
    windows = {
      -- width_preview = 50,
    },
  },
  keys = {
    -- override key mapping for neo-tree
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },

    {
      "<leader>fm",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },

    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
  },
}
