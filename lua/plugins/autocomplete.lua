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
  },
}
