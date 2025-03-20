return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      denols = {
        root_dir = function(fname)
          local deno_root = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")(fname)
          local node_root = require("lspconfig").util.root_pattern("package.json")(fname)

          if deno_root and not node_root then
            return deno_root
          end
        end,
        init_options = {
          lint = true,
          unstable = true,
        },
      },
      tsserver = {
        root_dir = function(fname)
          local node_root = require("lspconfig").util.root_pattern("package.json")(fname)
          local deno_root = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")(fname)

          if node_root and not deno_root then
            return node_root
          end
        end,
      },
    },
  },
}
