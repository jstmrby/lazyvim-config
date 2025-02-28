return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
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
