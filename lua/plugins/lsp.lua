return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
    },
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Configure denols for Deno projects
    lspconfig.denols.setup({
      root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      init_options = {
        lint = true,
        unstable = true,
        enable = true,
      },
    })

    -- Configure tsserver for Node.js/TypeScript projects
    lspconfig.tsserver.setup({
      root_dir = lspconfig.util.root_pattern("package.json"),
      -- Disable tsserver if deno.json is present
      on_attach = function(client, bufnr)
        local deno_root = lspconfig.util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd())
        if deno_root then
          client.stop() -- Stop tsserver if this is a Deno project
          return
        end
      end,
    })

    -- Add Prettier formatter
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}
