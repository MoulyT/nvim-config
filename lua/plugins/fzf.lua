return {
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({
        winopts = {
          title = "default-title", -- Important as we lose the prompt
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
