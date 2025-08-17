return {
  {
    "m4xshen/hardtime.nvim",
    event = "BufEnter",
    enabled = false,
    dependencies = { "MunifTanjim/nui.nvim", "tris203/precognition.nvim" },
    opts = {
      callback = function(text)
        require("precognition").peek()
        vim.notify(text)
      end,
    },
  },
}
