# Todo 

- [] All popup borders rounded, e.g. documentation hover, lazyvim, noice, mason
- [] Snacks.nvim terminal does not position for typing correctly if reopened, only if opening a new terminal
  - Fixed by pressing enter, can we do an autocmd?
  - Also solved by using a terminal prompt that only has one line
- [] Set up markdown files 
- [] Set up .tex files
  - Requires a tex installation, e.g. TeX Live/MacTeX and the plugin `vimtex`
- [] Set up markdown, js/ts/json files, and vimtex
- [x] Zen mode and dimming not working with transparent color scheme 
  - Using the same colorscheme as the terminal means we don't need to set the background color to transparent
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
