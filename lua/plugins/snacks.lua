return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        grep_word = { hidden = true },
        grep_buffers = { hidden = true },
      },
    },
  },
  init = function()
    -- Oxocarbon doesn't theme snacks.picker, so directory-prefix on selected
    -- rows renders with no contrast against the selection bg. Force a mid-grey
    -- that's readable against both default bg (#161616) and selection (#393939).
    local function fix_picker_hl()
      vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#878787" })
    end
    vim.api.nvim_create_autocmd("ColorScheme", { callback = fix_picker_hl })
    fix_picker_hl()
  end,
}
