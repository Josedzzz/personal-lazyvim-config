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

    -- Make sure VimWiki files are treated as markdown
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "vimwiki",
      callback = function()
        vim.bo.filetype = "markdown"
        vim.treesitter.language.register("markdown", "vimwiki") -- Treat vimwiki as markdown
      end,
    })
  end,
}
