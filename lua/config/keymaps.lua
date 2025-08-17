-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Comando simple para copiar la ruta del archivo actual
vim.keymap.set(
  "n",
  "<leader>yr",
  '"+yy:let @+=expand("%")<CR>:echo "Ruta copiada: " . @+<CR>',
  { noremap = true, silent = false }
)

