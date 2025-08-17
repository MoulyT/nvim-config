-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Configurar colorcolumn solo para buffers de tipo normal
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local buftype = vim.bo.buftype
    if buftype == "" then
      -- Este es un buffer de archivo normal
      vim.opt_local.colorcolumn = "80"
    else
      -- Otro tipo de buffer (terminal, ayuda, etc.)
      vim.opt_local.colorcolumn = ""
    end
  end,
})
