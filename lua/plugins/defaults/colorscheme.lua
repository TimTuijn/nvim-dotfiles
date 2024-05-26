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
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      color_overrides = {
        latte = {
          base = "#ffffff",
          mantle = require("catppuccin.palettes").get_palette("latte").base,
        },
      },
      highlight_overrides = {
        latte = function(latte)
          return {
            LspReferenceText = { bg = latte.surface0 },
            LspReferenceRead = { bg = latte.surface0 },
            LspReferenceWrite = { bg = latte.surface0 },
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
