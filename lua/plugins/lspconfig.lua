return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      -- Disables inline text diagnostics
      virtual_text = false,
    },
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      basedpyright = {
        settings = {
          basedpyright = { -- NOTE: can be python for per file type config or basedpyright for global config
            analysis = {
              diagnosticSeverityOverrides = {
                reportUnusedImport = "none",
                reportUnusedVariable = "none",
                reportUnusedClass = "none",
                reportUnusedFunction = "none",
              },
            },
          },
        },
      },
      ruff = {},
      -- Only attach eslint when a usable config exists upward from the file.
      -- eslint v9+ ignores .eslintrc.* by default, so prefer flat config and
      -- only fall back to legacy when ESLINT_USE_FLAT_CONFIG=false is set.
      -- Using a function (not root_markers) so this fully replaces the default
      -- markers instead of merging with them.
      eslint = {
        root_dir = function(bufnr, on_dir)
          local flat = {
            "eslint.config.js", "eslint.config.mjs", "eslint.config.cjs",
            "eslint.config.ts", "eslint.config.mts", "eslint.config.cts",
          }
          local legacy = {
            ".eslintrc",
            ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.mjs",
            ".eslintrc.yaml", ".eslintrc.yml", ".eslintrc.json",
          }
          local dir = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))
          local found = vim.fs.find(flat, { upward = true, path = dir })[1]
          if not found and vim.env.ESLINT_USE_FLAT_CONFIG == "false" then
            found = vim.fs.find(legacy, { upward = true, path = dir })[1]
          end
          if found then on_dir(vim.fs.dirname(found)) end
        end,
        settings = {
          workingDirectories = { mode = "auto" },
        },
      },
      -- Yarn PnP workaround for a specific project — DO NOT enable globally.
      -- For projects that need it, put this in the repo instead:
      --   .neoconf.json: { "lspconfig": { "vtsls": { "settings": { "typescript": { "tsdk": ".yarn/sdks/typescript/lib" } } } } }
      --   or .vscode/settings.json: { "typescript.tsdk": ".yarn/sdks/typescript/lib" }
      -- vtsls = {
      --   settings = {
      --     typescript = {
      --       tsdk = "./.yarn/sdks/typescript/lib",
      --     },
      --   },
      -- },
    },
  },
}
