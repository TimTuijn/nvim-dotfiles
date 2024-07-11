return {
  {
    "eldritch-theme/eldritch.nvim",
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "scottmckendry/cyberdream.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "neanias/everforest-nvim",
  },
  {
    "rose-pine/neovim",
  },
  {
    "rmehri01/onenord.nvim",
  },
  {
    "navarasu/onedark.nvim",
  },
  { "folke/tokyonight.nvim", lazy = false },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    ---@type CatppuccinOptions
    opts = {
      color_overrides = {
        latte = {
          base = "#ffffff",
          mantle = require("catppuccin.palettes").get_palette("latte").base,
          -- mantle = "#ffffff",
        },
      },
      highlight_overrides = {
        latte = function(latte)
          return {
            LspReferenceText = { bg = latte.surface0 },
            LspReferenceRead = { bg = latte.surface0 },
            LspReferenceWrite = { bg = latte.surface0 },
            -- The following is an override of FloatBorder background from latte.mantle to latte.base
            FloatBorder = {
              fg = latte.blue,
              bg = latte.base,
            },
          }
        end,
      },
      integrations = {
        harpoon = true, -- This one is not yet working, hopefully so in the future when harpoon2 is merged in master
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
}
