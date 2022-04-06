# Tabout

Neovim dead simple clone of [a similar VSCode plugin](https://github.com/albertromkes/tabout).

# Installation

## Plug
```lua
call plug#begin(s:plug_dir)
Plug 'ijimiji/tabout.nvim'
call plug#end()
```

## Packer
```lua
return require('packer').startup(function()
  use 'ijimiji/tabout.nvim'
end)
```
