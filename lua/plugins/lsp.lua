return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              command = "clippy",
            },
            cargo = {
              allFeatures = true,
            },
          },
        },
      },
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
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")(fname)
        end,
      },
      -- -- Use vtsls ONLY in non-Deno projects
      -- vtsls = {
      --   root_dir = function(fname)
      --     local util = require("lspconfig.util")
      --     return util.root_pattern("package.json")(fname) and not util.root_pattern("deno.json", "deno.jsonc")(fname)
      --   end,
      --   settings = {
      --     vtsls = {
      --       autoUseWorkspaceTsdk = true,
      --       enableMoveToFileCodeAction = true,
      --       experimental = {
      --         completion = {
      --           enableServerSideFuzzyMatch = true,
      --         },
      --         maxInlayHintLength = 30,
      --       },
      --     },
      --   },
      -- },
    },
  },
}
