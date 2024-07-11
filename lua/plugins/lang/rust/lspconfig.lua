-- NOTE: Lazyvim default config + extra stuff cramped into it (for extras.lang.rust)
return {
  "neovim/nvim-lspconfig",
  opts = {
    codelens = {
      enabled = true,
    },
    servers = {
      -- Taplo is a .TOML LSP server (only for Rust)
      taplo = {
        -- -@type LazyKeysLspSpec
        keys = {
          {
            "K",
            function()
              if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                require("crates").show_popup()
              else
                vim.lsp.buf.hover()
              end
            end,
            desc = "Show Crate Documentation",
          },
          { "<leader>ct", "<cmd>Crates toggle<cr>", desc = "Crates toggle", mode = "n" },

          { "<leader>cV", "<cmd>Crates show_versions_popup<cr>", desc = "Crates versions (popup)", mode = "n" },
          { "<leader>cF", "<cmd>Crates show_features_popup<cr>", desc = "Crates features (popup)", mode = "n" },
          { "<leader>cD", "<cmd>Crates show_dependencies_popup<cr>", desc = "Crates dependencies (popup)", mode = "n" },

          { "<leader>cu", "<cmd>Crates update_crate<cr>", desc = "Crates update (crate)", mode = "n" },
          { "<leader>cu", "<cmd>Crates update_crates<cr>", desc = "Crates update (crates)", mode = "v" },
          { "<leader>cA", "<cmd>Crates update_all_crates<cr>", desc = "Crates update all (crates)", mode = "n" },

          {
            "<leader>cx",
            "<cmd>Crates expand_plain_crate_to_inline_table<cr>",
            desc = "Crates e[x]pand table",
            mode = "n",
          },
          { "<leader>cX", "<cmd>Crates extract_crate_into_table<cr>", desc = "Crates e[X]tract table", mode = "n" },

          { "<leader>cH", "<cmd>Crates open_homepage<cr>", desc = "Crates [H]omepage", mode = "n" },
          { "<leader>cR", "<cmd>Crates open_repository<cr>", desc = "Crates [R]epository (GitHub/Lab)", mode = "n" },
          { "<leader>cD", "<cmd>Crates open_documentation<cr>", desc = "Crates [D]ocumentation", mode = "n" },
          { "<leader>cI", "<cmd>Crates open_cratesio<cr>", desc = "Crates io", mode = "n" },
        },
      },
    },
  },
}
