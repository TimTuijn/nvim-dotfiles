-- WARNING: Lazyvim defaults via EXTRA package extras.lang.rust
return {
  "Saecki/crates.nvim",
  opts = {
    -- Option to open in WSL to windows
    open_programs = { "explorer.exe" },
    popup = {
      autofocus = true,
      hide_on_select = true,
      show_version_date = true,
    },
    null_ls = {
      enabled = true,
      name = "crates.nvim",
    },
  },
}
