return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = {
        "snippet_forward",
        LazyVim.cmp.map({ "ai_accept" }),
        "accept",
        "fallback",
      },
      ["<S-Tab>"] = {
        "snippet_backward",
        "fallback",
      },
    },
    completion = {
      menu = { border = "single" },
      documentation = { window = { border = "single" } },
    },
    signature = { window = { border = "single" } },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      -- sorts = {
      --   "exact",
      --   "score",
      --   "sort_text",
      -- },
    },
    snippets = {
      preset = "luasnip",
    },
    sources = {
      default = { "copilot" },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          kind = "Copilot",
          score_offset = 10,
          async = true,
        },
      },
    },
  },
}
