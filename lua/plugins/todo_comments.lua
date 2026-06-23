return {
  "folke/todo-comments.nvim",
  opts = {
    highlight = {
      after = "",
      keyword = "bg",
      -- Default requires a trailing `:`. Use a closing word boundary instead
      -- so `// TODO` and `//TODO` match too, but `TODOLIST` still doesn't.
      pattern = [[.*<(KEYWORDS)>]],
    },
  },
}
