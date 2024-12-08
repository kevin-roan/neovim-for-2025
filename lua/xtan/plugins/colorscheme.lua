return {
  -- {
  --   "bluz71/vim-nightfly-guicolors",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme nightfly]])
  --   end,
  -- },
  --
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  {
    "overcache/NeoSolarized",
    { "tjdevries/colorbuddy.nvim" },
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "svrana/neosolarized.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    requires = { "tjdevries/colorbuddy.nvim" },
    config = function()
      -- Add your configuration for svrana/neosolarized.nvim here
      local neosolarized = require("neosolarized")

      -- Example: Set comment_italics to true
      neosolarized.setup({ comment_italics = true })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
  },

  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme onedark]])
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- local bg = "#011628"
      local bg_dark = "#262425"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      -- local fg = "#CBE0F0"
      local fg = "#ffffff"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_float = bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = bg_dark
          colors.bg_visual = bg_visual
          colors.border = border
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg_dark
        end,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
