return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.completion = {
        autocomplete = { -- Configurar reglas específicas de autocompletado
          require('cmp.types').cmp.TriggerEvent.TextChanged,
        },
      }
      opts.sources = {
        { name = "nvim_lsp", priority = 1000 }, -- Prioridad alta para LSP
        { name = "buffer", max_item_count = 3 },
        { name = "path" },
      }
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      })
      return opts
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<Tab>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
        relative = "cursor",
        position = "auto",
        window = {
          border = "none",
          row = 1,
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
  },
}
