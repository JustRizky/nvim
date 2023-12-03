local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "rizky.plugins" }, { import = "rizky.plugins.lsp" } }, {
  install = {
    colorscheme = { "gruvbox" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

-- neovide settings
vim.o.guifont = "CaskaydiaCove Nerd Font:h12"

-- Helper function for transparency formatting
local alpha = function()
  return string.format("%x", math.floor(255 * (vim.g.transparency or 0.875)))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.875
vim.g.neovide_background_color = "#1d2021" .. alpha()

vim.g.neovide_floating_blur_amount_x = 16.0
vim.g.neovide_floating_blur_amount_y = 16.0
