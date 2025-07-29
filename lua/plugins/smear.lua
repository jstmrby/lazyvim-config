return {
  "sphamba/smear-cursor.nvim",
  opts = {
    stiffness = 0.8,
    trailing_stiffness = 0.5,
    stiffness_insert_mode = 0.7,
    trailing_stiffness_insert_mode = 0.7,
    damping = 0.8,
    damping_insert_mode = 0.8,
    distance_stop_animating = 0.5,
    time_interval = 1,
  },
  specs = {
    -- disable mini.animate cursor
    {
      "echasnovski/mini.animate",
      optional = true,
      opts = {
        cursor = { enable = false },
      },
    },
    -- disable snacks scroll animation
    {
      "snacks.nvim",
      opts = {
        -- If it is reenabled put the following in the `options.lua` file: `vim.g.snacks_animate = false`
        -- This will make sure the scroll is not enabled by default (opt-in)
        scroll = { enabled = false },
      },
    },
  },
}
