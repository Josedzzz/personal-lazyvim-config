-- return {
--   { "catppuccin/nvim", name = "catppuccin", lazy = false, opts = { flavour = "mocha" } },
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "catppuccin",
--    },
--  },
-- }

return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
  end,
}
