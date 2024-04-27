return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          workspace = {
            symbol = {
              search = {
                kind = "all_symbols",
              },
            },
          },
        },
      },
    },
  },
}
