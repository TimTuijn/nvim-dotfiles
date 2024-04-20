return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 1,
    },
    plugins = {
      gitsigns = { enabled = false },
      tmux = { enabled = false },
    },
    on_open = function(_)
      require("lualine").hide({})
      vim.o.statusline = ""
    end,
    on_close = function()
      require("lualine").hide({ unhide = true })
    end,
  },
  keys = {
    {
      "<leader>uz",
      "<cmd>ZenMode<cr>",
      desc = "Zen mode",
    },
  },
}
