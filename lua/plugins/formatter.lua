return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettierd" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" }, -- Para archivos .jsx
        typescriptreact = { "prettierd" }, -- Para archivos .tsx
        -- Puedes agregar más tipos de archivos si es necesario
      },
    },
  },
}
