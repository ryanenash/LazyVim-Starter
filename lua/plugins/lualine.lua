return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local icons = LazyVim.config.icons

    opts.options.component_separators = { left = "" }

    opts.sections.lualine_a = {
      { "mode", separator = { left = "", right = "" }, padding = { left = 0, right = 0 } },
    }

    opts.sections.lualine_b = {
      { "branch", separator = { right = "" }, padding = { left = 1, right = 0 } },
    }

    opts.sections.lualine_c = {
      {
        function()
          return "󱉭 " .. vim.fs.basename(vim.fn.getcwd())
        end,
        color = { fg = Snacks.util.color("Special") },
        separator = "",
        padding = { left = 1, right = 1 },
      },
      {
        function()
          return LazyVim.lualine.root_dir({ icon = "" })[1]()
        end,
        color = { fg = Snacks.util.color("Special") },
        padding = { left = 0, right = 1 },
      },
      { LazyVim.lualine.pretty_path() },
    }

    opts.sections.lualine_x = {
      Snacks.profiler.status(),
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      -- stylua: ignore
      {
        function() return "  " .. require("dap").status() end,
        cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
        color = function() return { fg = Snacks.util.color("Debug") } end,
      },
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      },
    }

    opts.sections.lualine_y = {
      { "progress", separator = { left = "" }, padding = { left = 0, right = 1 } },
    }

    opts.sections.lualine_z = {
      {
        function()
          return " " .. os.date("%R")
        end,
        separator = { left = "", right = "" },
        padding = { left = 0, right = 0 },
      },
    }
  end,
}
