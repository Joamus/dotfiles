---- Lazy pkg-manager ----
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

vim.g.mapleader = ' '

-- Plugins --
local plugins = {}

require("lazy").setup("plugins")

-- Colorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- Mason
require("mason").setup()

-- Settings --
require("./set")

-- Remaps --
require("./remap")

-- Plugin remaps
require("./plugin-remap")
