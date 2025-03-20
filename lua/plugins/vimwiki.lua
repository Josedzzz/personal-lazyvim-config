return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Documents/zzzUniversidad/notes/",
        syntax = "markdown",
        ext = ".md",
      },
    }
    vim.g.vimwiki_global_ext = 0 -- Disable automatic file extension recognition

    -- Prevent Treesitter from trying to parse VimWiki files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "vimwiki",
      callback = function()
        vim.treesitter.stop()
      end,
    })
  end,
}
