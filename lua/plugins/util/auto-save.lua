return {
  "okuuva/auto-save.nvim",
  enabled = false,
  lazy = false,
  opts = {
    enabled = false,
    debounce_delay = 1000,
  },
  keys = {
    {
      "<leader>ua",
      "<cmd>ASToggle<cr>",
      desc = "Toggle AutoSave",
    },
  },
}
