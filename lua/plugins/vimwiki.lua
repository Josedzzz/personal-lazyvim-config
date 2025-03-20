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
  end,
}
