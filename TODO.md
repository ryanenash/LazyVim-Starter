# Todo 

- [] All popup borders rounded, e.g. documentation hover, lazyvim, noice, mason
- [] Snacks.nvim terminal does not position for typing correctly if reopened, only if opening a new terminal
  - Reproduce: open the floating terminal with `<C-/>`, hide it with `<C-/>`, toggle back on with `<C-/>`. On the second open, the cursor / focus is not positioned on the prompt line — typing goes to the wrong row.
  - Workarounds: press Enter, or `<C-c>`, or use a single-line terminal prompt
  - Open question: is this a Snacks/Neovim redraw bug, or is zsh4humans / powerlevel10k (multi-line prompt) the trigger? p10k repaints on resize/focus events — if those events aren't firing on terminal reshow, the prompt rows render misaligned with where Neovim thinks the cursor is.
  - Next step: test with a plain `PS1='$ '` (or `zsh -f`) inside the float to isolate which side is at fault. Can we wire an autocmd on `TermEnter`/`BufEnter` that sends `<C-l>` or fires a redraw?
- [] Set up markdown files 
- [] Set up .tex files
  - Requires a tex installation, e.g. TeX Live/MacTeX and the plugin `vimtex`
- [] Set up markdown, js/ts/json files, and vimtex
- [x] Zen mode and dimming not working with transparent color scheme
  - Just use same color scheme as terminal in non-transparent mode (tokyonight-night)
  - Using the same colorscheme as the terminal means we don't need to set the background color to transparent
- [x] Lua warnings in nvim config files
  - Caused by LazyVim/LazyDev interactions
  - <https://Github.com/folke/lazydev.nvim/issues/12>
  - <https://Github.com/folke/lazydev.nvim/pull/106>
  - <https://Github.com/folke/lazydev.nvim/issues/116>
- [x] Set up JS/TS/Eslint/Prettier
  - Enabled in LazyVim extras
  - To work with Volta (per project node vers) we need to create a `.yarn/sdks` dir with: `yarn dlx @yarnpkg/sdks base`
    - And define `vtsls` to use `.yarn/sdks/typescript/lib` as the `tsdk` location in the `lspconfig` config
    - By default `vtsls` looks for a `node_modules` folder which yarn versions above v2 do not create
    - Alternatively we can create a `.yarnrc.yaml` file with content:
      ```yaml
      nodeLinker: node-modules
      ```
    - Which does create a `node_modules` folder, but is not recommended by Yarn
    - If using npm it will create a `node_modules` folder by default which vtsls will use
    - Prettier and Eslint do not require custom configuration
  - Using vtsls with yarn requires a global yarn config, as I am using volta I do this with `volta install yarn`
    - This creates a .yarn folder in the home directory, if this is deleted, for each project `yarn` must be ran again to get the server working
