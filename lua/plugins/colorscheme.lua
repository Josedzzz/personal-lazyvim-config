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
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       variant = "main",
--       disable_background = true, -- Enables transparency
--       disable_float_background = true, -- Transparent floating windows
--     })
--     vim.cmd("colorscheme rose-pine")
--     -- Make the cursor line transparent
--     vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
--   end,
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
--         notify = false,
--         mini = false,
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

-- return {
--    {
--      "rebelot/kanagawa.nvim",
--      priority = 1000,
--      config = function()
--        vim.cmd("colorscheme kanagawa-dragon")
--
--        -- Set transparent background
--        local hl_groups = { "Normal", "NormalFloat", "SignColumn", "StatusLine", "StatusLineNC", "WinSeparator" }
--        for _, group in ipairs(hl_groups) do
--          vim.api.nvim_set_hl(0, group, { bg = "none" })
--        end
--
--        -- Sidebar transparency (for NvimTree, Telescope, NeoTree, etc.)
--        local sidebar_groups = { "NormalNC", "TelescopeNormal", "NvimTreeNormal", "NeoTreeNormal" }
--        for _, group in ipairs(sidebar_groups) do
--          vim.api.nvim_set_hl(0, group, { bg = "none" })
--        end
--
--        -- Fix LSP popups (make them transparent or black)
--        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" }) -- Autocomplete menu
--        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#1a1a1a" }) -- Selected item (dark gray)
--        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" }) -- Borders of floating windows
--        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Floating windows (LSP, etc.)
--        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "none" }) -- LSP Hints
--        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "none" }) -- LSP Errors
--        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "none" }) -- LSP Warnings
--        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "none" }) -- LSP Info
--
--        -- Make line numbers transparent
--        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" }) -- Normal line numbers
--        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#ff9e64" }) -- Highlight current line number (optional: set a color)
--      end,
--    },
--  }

-- return {
--   {
--     "shaunsingh/nord.nvim",
--     priority = 1000,
--     config = function()
--       vim.cmd("colorscheme nord")
--
--       -- Set transparent background
--       local hl_groups = { "Normal", "NormalFloat", "SignColumn", "StatusLine", "StatusLineNC", "WinSeparator" }
--       for _, group in ipairs(hl_groups) do
--         vim.api.nvim_set_hl(0, group, { bg = "none" })
--       end
--
--       -- Make the cursor line transparent
--       vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
--     end,
--   },
-- }

-- return {
--   {
--     "ramojus/mellifluous.nvim",
--     config = function()
--       require("mellifluous").setup({}) -- optional, see configuration section.
--       vim.cmd("colorscheme mellifluous")
--       local hl_groups = { "Normal", "NormalFloat", "SignColumn", "StatusLine", "StatusLineNC", "WinSeparator" }
--       for _, group in ipairs(hl_groups) do
--         vim.api.nvim_set_hl(0, group, { bg = "none" })
--       end
--     end,
--   },
-- }

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
      })
      vim.cmd.colorscheme("solarized-osaka")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
