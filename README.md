## My nvim config

*Refer to: [Christian C's nvim series](https://www.chrisatmachine.com/neovim)*

### Start on a New Machine
Plz refer to: https://www.chrisatmachine.com/Neovim/01-vim-plug/

### Add a Theme
1. First go to find a prefered theme. Some refs can be found at:
- https://github.com/rafi/awesome-vim-colorschemes
- https://vimawesome.com/?q=cat%3Acode-display

2. Install by `Vim-Plug`
Once targeted, add lines in `vim-plug/pluginsvim`:
```vim
    " Theme Sierra
    Plug 'alessandroyorba/sierra'
```
Install it with `:PlugInstall`

3. Config the targeted theme
After installation, activate it in vim.
Some themes may provide different modes (day/night).
To do the things above, create a new file under `themes`, and add lines:
```vim
" sierra.vim
let g:sierra_Sunset = 1
" let g:sierra_Twilight = 1
" let g:sierra_Midnight = 1
" let g:sierra_Pitch = 1
colorscheme sierra
```

4. Activate the Theme
Once the theme config file set, apply it in `init.vim`:
```vim
source $HOME/.config/nvim/themes/sierra.vim
```


### References:
[vimawesome](https://vimawesome.com/)

