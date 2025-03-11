return {
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        timeout = vim.o.timeoutlen,
        mappings = {
          i = {
            j = {
              k = "<Esc>",
              j = "<Esc>",
            },
          },
          t = {
            j = {
              k = function()
                local bufname = vim.api.nvim_buf_get_name(0)
                if bufname:match("lazygit") then
                  return "k"
                end

                return "<C-\\><C-n>"
              end,
              j = function()
                local bufname = vim.api.nvim_buf_get_name(0)
                if bufname:match("lazygit") then
                  return "j"
                end

                return "<C-\\><C-n>"
              end,
            },
          },
        },
      })
    end,
  },
}
