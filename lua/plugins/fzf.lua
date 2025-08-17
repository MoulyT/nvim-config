return {
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({
        keymap = {
          fzf = {
            ["ctrl-h"] = "abort",
            ["ctrl-j"] = "down",
            ["ctrl-k"] = "up",
            ["ctrl-l"] = "accept",
          },
        },
      })
    end,
  },
}
