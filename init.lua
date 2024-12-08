require("xtan.core")
require("xtan.lazy")

-- custom snippets
require("xtan.snippets.typescriptsnippets")

-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme neosolarized]])
-- vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme tokyonight]])
--
-- ejs syntax highlight
vim.cmd([[autocmd BufRead,BufNewFile *.ejs set filetype=html]])

-- neovide configurations

if vim.g.neovide then
  -- everything here works when we are on neovide.
  vim.o.guifont = "Pragmasevka Nerd Font:h16" -- text below applies for VimScript

  vim.g.neovide_transparency = 0.8

  vim.cmd([[colorscheme NeoSolarized]])

  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_command_line = false
end

-- Disable mouse when typing (entering insert mode)
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  callback = function()
    vim.o.mouse = ""
  end,
})

-- Enable mouse when not typing (leaving insert mode)
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    vim.o.mouse = "a"
  end,
})

-- to fix tmux wierd border around some texts
vim.opt.termguicolors = true
