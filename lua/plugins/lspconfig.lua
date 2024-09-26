return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- tsserver = {
      --   enabled = true,
      --   init_options = {
      --     preferences = {
      --       importModuleSpecifierPreference = "project-relative",
      --       importModuleSpecifierEnding = "minimal",
      --     },
      --   },
      -- },
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "relative",
              importModuleSpecifierEnding = "minimal",
            },
          },
        },
      },
    },
  },
}
