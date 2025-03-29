return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      clangd = { -- C++ LSP
        cmd = { "clangd", "--background-index", "--clang-tidy" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname)
            or vim.fn.getcwd()
        end,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      },
    },
  },
}
