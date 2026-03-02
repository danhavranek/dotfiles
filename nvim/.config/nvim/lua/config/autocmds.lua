-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function set_colorscheme()
  if vim.o.background == "light" then
    vim.cmd.colorscheme("dawnfox")
  else
    vim.cmd.colorscheme("gruvbox-material")
  end
end

-- Apply on startup
set_colorscheme()

-- Re-apply when background changes
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = set_colorscheme,
})
