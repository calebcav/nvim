return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    cmd = "Copilot",
    init = function()
      vim.g.copilot_no_tab_map = true
    end,
    config = function()
      vim.keymap.set("i", "<C-l>", 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
        silent = true,
        desc = "Copilot accept suggestion (fast)",
      })
      vim.keymap.set("i", "<C-g>a", 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
        silent = true,
        desc = "Copilot accept suggestion",
      })
      vim.keymap.set("i", "<C-g>n", "<Plug>(copilot-next)", {
        silent = true,
        desc = "Copilot next suggestion",
      })
      vim.keymap.set("i", "<C-g>p", "<Plug>(copilot-previous)", {
        silent = true,
        desc = "Copilot previous suggestion",
      })
      vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", {
        silent = true,
        desc = "Copilot dismiss suggestion (fast)",
      })
      vim.keymap.set("i", "<C-g>d", "<Plug>(copilot-dismiss)", {
        silent = true,
        desc = "Copilot dismiss suggestion",
      })
    end,
  },
}
