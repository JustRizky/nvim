return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        transparent_mode = true,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
