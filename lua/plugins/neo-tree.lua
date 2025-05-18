return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    { "<leader>e", false },
    { "<leader>fe", false },
  },
  opts = {
    window = {
      mappings = {
        ["a"] = {
          "add",
          config = {
            show_path = "none",
          },
        },
        ["c"] = {
          "copy",
          config = {
            show_path = "relative",
          },
        },
        ["m"] = {
          "move",
          config = {
            show_path = "relative",
          },
        },
        ["P"] = { "toggle_preview", config = { use_float = true } },
        ["I"] = "image_wezterm",
      },
    },
    commands = {
      image_wezterm = function(state)
        local node = state.tree:get_node()
        if node.type == "file" then
          require("image_preview").PreviewImage(node.path)
        end
      end,
    },
  },
}
