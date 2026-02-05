-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = { "unnamed", "unnamedplus" }

-- Animations
-- vim.g.snacks_animate = false
vim.g.snacks_animate_scroll = false

-- Modal background
vim.o.winblend = 0
vim.o.pumblend = 0

-- Color scheme
vim.g.gruvbox_material_background = "hard"
