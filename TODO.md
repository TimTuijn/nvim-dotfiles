# My lengthy Nvim TODO

## zen mode (https://github.com/folke/zen-mode.nvim)

## tmux => tmux essentials? Also vim/emacs keybindings?

## Wezterm

## Checkout yadm

[yadm](https://yadm.io/docs/overview) is a dotfile manager that can make setup fast for each new environment we're in.

## Extras Lazyvim
- editor:Outline (to check with edgy.nvim)

## Opening files in Windows from WSL NeoVim

I've already found this:
```bash
wslpath -w $PATH_TO_WHATEVER_FILE  | rg '\\' -r '$0$0' | xargs cmd.exe /C start
```
_And yes, I need to double each '\\', because they are cancelling each other out after each step :(_

However, this does not seem to work nicely with a URL. That can be directly piped to `start`.

```bash
echo http://google.be | xargs cmd.exe /C start
```

Somehow, we need to have the two work nicely together...
For now we just use the following to have links work:

```lua
vim.g.netrw_browsex_viewer = "cmd.exe /C start"
```
## WSL cursor not resetting correctly
:au VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
