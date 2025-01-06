return {
  {
    "gbprod/substitute.nvim",
    keys = {
      -- Sustituciones básicas
      { "R", "<cmd>lua require('substitute').operator()<cr>", desc = "Substitute with motion" },
      { "RR", "<cmd>lua require('substitute').line()<cr>", desc = "Substitute line" },
      { "RS", "<cmd>lua require('substitute').eol()<cr>", desc = "Substitute to end of line" },
      { mode = "x", "R", "<cmd>lua require('substitute').visual()<cr>", desc = "Substitute visual" },

      -- Sustituciones con rango (usando leader r)
      { "<leader>r", "<cmd>lua require('substitute.range').operator()<cr>", desc = "Range substitute" },
      {
        mode = "x",
        "<leader>r",
        "<cmd>lua require('substitute.range').visual()<cr>",
        desc = "Range substitute visual",
      },
      { "<leader>rr", "<cmd>lua require('substitute.range').word()<cr>", desc = "Substitute word in range" },

      -- Exchange
      { "Rx", "<cmd>lua require('substitute.exchange').operator()<cr>", desc = "Exchange with motion" },
      { "Rxx", "<cmd>lua require('substitute.exchange').line()<cr>", desc = "Exchange line" },
      { "Rxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", desc = "Exchange cancel" },
      { mode = "x", "RX", "<cmd>lua require('substitute.exchange').visual()<cr>", desc = "Exchange visual" },
    },
    opts = {
      -- Configuración por defecto, puedes ajustarla según necesites
      highlight_substituted_text = {
        enabled = true,
        timer = 500,
      },
    },
  },
}
