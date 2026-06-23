return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "rounded" },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      providers = {
        lsp = { score_offset = 100 },
        buffer = {
          min_keyword_length = 4,
          score_offset = -10,
        },
        snippets = { score_offset = -5 },
      },
    },
    fuzzy = {
      sorts = { "exact", "score", "sort_text" },
    },
  },
}
