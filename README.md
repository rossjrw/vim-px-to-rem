**vim-px-to-rem**
==================================
Makes font-size unit conversion for your CSS stylesheets easy!

Installation
------------------------
### Vundle Install
`:Plugin 'rossjrw/vim-px-to-rem'` in ~/.vimrc then `:PluginInstall`


Usage
-------------------------
To convert px to rem, visual select a bunch of text then:

```
:Rem
```

Or enter the following to convert the rem to px:

```
:Px
```

To convert all px in the file to rem:

```
:RemAll
```

Or to convert all rem in the file to px:

```
:PxAll
```

Add a bang (eg. :Px!) to any of the above command to bypass the prompts before each conversion.

If the value is a valid px or rem measurement, it'll be converted.

1rem is assumed to be equal to 16px.

Does not convert em, as em is a context-aware unit.


License
------------------------------------------------------
Forked from https://github.com/chiedo/vim-px-to-em and under the same license.
