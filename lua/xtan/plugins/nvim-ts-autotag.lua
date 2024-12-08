-- lua/xtan/plugins/nvim-ts-autotag.lua

return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      -- Add any specific configurations here if needed
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- Ensure treesitter is a dependency
  },
  event = "InsertEnter", -- Load plugin when entering insert mode
}
