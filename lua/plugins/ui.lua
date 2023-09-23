return {
  { "ellisonleao/gruvbox.nvim", lazy = true },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  { "danilamihailov/beacon.nvim", enabled = true, event = "BufRead" },
}
