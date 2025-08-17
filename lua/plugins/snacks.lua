return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    image = {
      -- your image configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    words = {},
    picker = {
      sources = {
        files = {
          preview = function(ctx)
            local res = Snacks.picker.preview.file(ctx)
            if ctx.item.file then
              ctx.picker.preview:set_title(ctx.item.file)
            end
            return res
          end,
        },
        grep = {
          preview = function(ctx)
            local res = Snacks.picker.preview.file(ctx)
            if ctx.item.file then
              ctx.picker.preview:set_title(ctx.item.file)
            end
            return res
          end,
        },
      },
    },
  },
}
