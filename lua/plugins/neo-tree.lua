return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  init = function() end, -- override init config to not auto-load neo-tree on startup
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    source_selector = {
      winbar = false, -- toggle to show selector on winbar
      sources = {
        { source = "filesystem" },
        { source = "git_status" },
        { source = "document_symbols" },
      },
    },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      -- hijack_netrw_behavior = "open_current",
      window = {
        position = "current",
      },
    },
    window = {
      mappings = {
        ["t"] = "toggle_node",
        ["O"] = {
          function(state)
            require("lazy.util").open(state.tree:get_node().path, { system = true })
          end,
          desc = "open with system application",
        },
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
  },
  keys = {
    {
      "<leader>cs",
      function()
        require("neo-tree.command").execute({ source = "document_symbols", toggle = true })
      end,
      desc = "Document symbols explorer (NeoTree)",
    },
  },
}
