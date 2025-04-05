local nvim_lsp = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = true,
        },
      },
      pyright = {},
      denols = {
        filetypes = { "typescript", "typescriptreact" },
        root_dir = function(...)
          return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
        end,
      },

      vtsls = {
        root_dir = function()
          return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
            and vim.fs.root(0, {
              "tsconfig.json",
              "jsconfig.json",
              "package.json",
              ".git",
            })
        end,
        single_file_support = false,
      },
    },
  },
}
