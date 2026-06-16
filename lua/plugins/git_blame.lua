return {
  "f-person/git-blame.nvim",
  -- load the plugin at startup
  event = "VeryLazy",
  -- Because of the keys part, you will be lazy loading this plugin.
  -- The plugin wil only load once one of the keys is used.
  -- If you want to load the plugin at startup, add something like event = "VeryLazy",
  -- or lazy = false. One of both options will work.
  opts = {
    -- your configuration comes here
    -- for example
    enabled = true, -- if you want to enable the plugin
    -- message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
    message_template = "<summary> • <date> • <author> ", -- template for the blame message, check the Message template section for more options
    date_format = "%d-%m-%Y", -- template for the date, check Date format section for more options
    -- date_format = "%d-%m-%Y %H:%M:%S", -- template for the date, check Date format section for more options
    virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
    highlight_group = "Comment",
  },
  -- opts = function()
  --   -- Create a new highlight group that combines the "Comment" foreground
  --   -- with the "CursorLine" background.
  --   local hl_cursor_line = vim.api.nvim_get_hl(0, { name = "CursorLine" })
  --   local hl_comment = vim.api.nvim_get_hl(0, { name = "FoldColumn" })
  --   local hl_combined = vim.tbl_extend("force", hl_comment, { bg = hl_cursor_line.bg })
  --   vim.api.nvim_set_hl(0, "CursorLineBlame", hl_combined)
  --
  --   -- Return the configuration table for the plugin
  --   return {
  --     enabled = true,
  --     -- Use the newly created highlight group
  --     highlight_group = "CursorLineBlame",
  --     message_template = "• <summary> • <date> • <author>",
  --     date_format = "%d-%m-%Y",
  --     virtual_text_column = 1,
  --   }
  -- end,
}
