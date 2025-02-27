return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    {
      "<leader>e",
      function()
        require("oil").open_float(nil, { preview = { vertical = true } })
      end,
      desc = "Explorer Oil (parent dir)",
    },
    {
      "<leader>fe",
      function()
        require("oil").open_float(LazyVim.root(), { preview = { vertical = true } })
      end,
      desc = "Explorer Oil (Root Dir)",
    },
  },
}
