return {
  "mbbill/undotree",
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
  keys = {
    { "<leader>U", vim.cmd.UndotreeToggle, desc = "Toggle undotree" },
  },
}
