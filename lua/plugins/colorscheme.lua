return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
      -- colorscheme = "oxocarbon",          -- previous
      -- colorscheme = "tokyonight-night",   -- previous-previous
    },
  },

  -- {
  --   "nyoom-engineering/oxocarbon.nvim",  -- previous colorscheme plugin
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      color_overrides = {
        mocha = {
          base   = "#181818",  -- neutral grey instead of default #1e1e2e (purple-tinted)
          mantle = "#141414",
          crust  = "#101010",
        },
      },
      integrations = {
        snacks            = { enabled = true, indent_scopes_color = "lavender" },
        blink_cmp         = true,
        noice             = true,
        mason             = true,
        treesitter        = true,
        treesitter_context = true,
        mini              = { enabled = true },
        native_lsp        = { enabled = true, virtual_text = { errors = { "italic" } } },
        lsp_trouble       = true,
        which_key         = true,
        gitsigns          = true,
        illuminate        = true,
        semantic_tokens   = true,
        notify            = true,
        flash             = true,
        markdown          = true,
        rainbow_delimiters = true,
        indent_blankline  = { enabled = true },
        telescope         = { enabled = true },
        diffview          = true,
        fzf               = true,
        harpoon           = true,
        render_markdown   = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    -- opts = {
    --   transparent = true,
    --   styles = {
    --     sidebars = "transparent",
    --     floats = "transparent",
    --   },
    -- },
  },
}
