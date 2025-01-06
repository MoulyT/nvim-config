return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Guardar los keymaps originales
      local original_maps = {}

      -- Función para manejar los keymaps
      local function manage_keymaps(action)
        if action == "disable" then
          -- Guardar y eliminar los keymaps
          for _, key in ipairs({ "jj", "jk" }) do
            local map = vim.fn.maparg(key, "t", false, true)
            if not vim.tbl_isempty(map) then
              original_maps[key] = map
              vim.keymap.del("t", key)
            end
          end
        else -- restore
          -- Restaurar los keymaps originales
          for key, map in pairs(original_maps) do
            vim.keymap.set("t", key, map.rhs, { noremap = map.noremap, silent = map.silent })
          end
          original_maps = {}
        end
      end

      require("fzf-lua").setup({
        winopts = {
          title = "default-title",
          -- Gestionar keymaps cuando se abre/cierra la ventana
          on_create = function()
            manage_keymaps("disable")
          end,
          on_close = function()
            manage_keymaps("restore")
          end,
        },
        keymap = {
          fzf = {
            ["h"] = "abort",
            ["j"] = "down",
            ["k"] = "up",
            ["l"] = "accept",
            ["i"] = "unbind(h)+unbind(j)+unbind(k)+unbind(l)+unbind(i)+change-prompt(> )",
            ["esc"] = [[transform:case "$FZF_PROMPT" in 
              *NORMAL*) echo abort;; 
              *) echo "change-prompt(NORMAL - PRESS 'I' FOR INSERT MODE)+rebind(h)+rebind(j)+rebind(k)+rebind(l)+rebind(i)";; 
              esac]],
            ["start"] = "change-prompt(NORMAL - PRESS 'I' FOR INSERT MODE)",
          },
        },
      })
    end,
  },
}
