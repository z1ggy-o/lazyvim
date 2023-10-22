return {
  { "ellisonleao/gruvbox.nvim", lazy = true },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

 -- Show cursor blink
  { "danilamihailov/beacon.nvim", enabled = true, event = "BufRead" },

-- Center contents
  { {"shortcuts/no-neck-pain.nvim", version = "*"} }
}
