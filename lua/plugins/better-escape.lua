return {
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        timeout = vim.o.timeoutlen, -- Usar el timeoutlen de vim
        mappings = {
          i = {
            j = {
              k = "<Esc>",
              j = "<Esc>",
            },
          },
          t = {
            j = {
              k = "<C-\\><C-n>",
              j = "<C-\\><C-n>",
            },
          },
        },
      })
    end,
  },
}
