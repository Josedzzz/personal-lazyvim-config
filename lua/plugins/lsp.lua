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
    },
  },
}
