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
}
