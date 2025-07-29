return {
  "vinnymeller/swagger-preview.nvim",
  cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
  build = "npm i",
  config = true,
  keys = {
    {
      "<leader>sp",
      "<cmd>SwaggerPreviewToggle<cr>",
      desc = "Swagger Preview Toggle",
    },
  },
}
