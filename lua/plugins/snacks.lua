return {
  "snacks.nvim",
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.lines()
      end,
      desc = "Buffer Lines",
    },
  },
  opts = {
    picker = {
      matcher = {
        frecency = true,
      },
      formatters = {
        file = {
          filename_first = true,
          truncate = 80,
        },
      },
      win = {
        input = {
          keys = {
            ["<C-Left>"] = { "preview_scroll_left", mode = { "i", "n" } },
            ["<C-Right>"] = { "preview_scroll_right", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<C-Left>"] = "preview_scroll_left",
            ["<C-Right>"] = "preview_scroll_right",
          },
        },
      },
    },
  },
}
