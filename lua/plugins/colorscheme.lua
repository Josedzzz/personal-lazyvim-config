-- return {
--   { "catppuccin/nvim", name = "catppuccin", lazy = false, opts = { flavour = "mocha" } },
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "catppuccin",
--    },
--  },
-- }

-- return {
--  "rose-pine/neovim",
--  name = "rose-pine",
--  config = function()
--    require("rose-pine").setup({
--      disable_background = true, -- Enables transparency
--      disable_float_background = true, -- Transparent floating windows
--    })
--    vim.cmd("colorscheme rose-pine")
--  end,
-- }

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     opts = {
--       flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
--       transparent_background = true, -- Enables transparency
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--        notify = false,
--          mini = false,
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }

return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa-dragon")

      -- Set transparent background
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
  },
}
