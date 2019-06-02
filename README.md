**vim-px-to-rem**  -  Convert px to rem or rem to px
==================================
Makes font-size unit conversion for your CSS stylesheets easy!

Installation
------------------------
### Vundle Install
`:Plugin 'rossjrw/vim-px-to-rem'` in ~/.vimrc then `:PluginInstall`


Usage
-------------------------
To convert between px and rem, place the cursor over the value in normal mode and hit `<leader>r`.

If the value is a valid px or rem measurement, it'll be converted.

1rem is assumed to be equal to 16px.

Does not convert em, as em is a context-aware unit.


License
------------------------------------------------------
Forked from https://github.com/chiedo/vim-px-to-em and under the same license.
