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
    },
  },
}
