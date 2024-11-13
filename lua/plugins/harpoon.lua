return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<leader>h", false },
    { "<leader>H", false },
    {
      "<leader>hh",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon file",
    },
    {
      "<leader>hl",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon list (quick menu)",
    },
    {
      "<leader>hc",
      function()
        require("harpoon"):list():clear()
      end,
      desc = "Harpoon clear all items",
    },
    {
      "<leader>hr",
      function()
        require("harpoon"):list():remove()
      end,
      desc = "Harpoon remove item",
    },
  },
}
