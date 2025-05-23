# lua-mundo

[Demo](https://github.com/user-attachments/assets/703e8ff1-678a-439c-bdcd-07075a27a231)

This plugin is a fork of [vim-mundo](https://github.com/simnalamburt/vim-mundo).
I made this fork because I wanted to have a lua entry point so I can configure mundo with [lazy.nvim](https://github.com/folke/lazy.nvim) just like every other plugin. This plugin also has a few improvements such as scheduling the diff preview so that the screen doesn't freeze when you hold down one of the move keys and a new option called `preview_debounce` which delay's the preview by the given amount in milliseconds. I also added better symbols:

- ⭕ = File updated
- 📁 = File saved
- 📍 = Current editing location

## Configuration

You can configure lua just like every other lua plugin.
The opts are the same opts that already exist from mundo but just without the `mundo_` prefix.

Here's an example config:

```lua
return {
    "TheLazyCat00/lua-mundo",
    event = "UIEnter",
    opts = {
        auto_preview = 1,
        right = 1,
        preview_debounce = 0,
    },
    keys = {
        { "<leader>cu", "<Cmd>MundoToggle<CR>", "Toggle undotree" }
    }
}
```

Take a look at the [original vim-mundo docs](https://simnalamburt.github.io/vim-mundo/) to see all available options.

---
> Original README:

vim-mundo
=========

A Vim plugin to visualizes the Vim [undo tree].

<img src="https://simnalamburt.github.io/vim-mundo/screenshot.png">

* [Official webpage]
* [Introductory Video]

<br>

### How is this different than other plugins?
Mundo is a fork of [Gundo], and it has bunch of improvements.

* Several new features:
  * Ability to search undo history using <kbd>/</kbd>.
  * An 'in line' diff mode.
  * Navigation keys <kbd>J</kbd> and <kbd>K</kbd> to move thru written undos.
* Merged upstream [pull requests]:
  * [Fix paths with spaces][pr-29]
  * [Display timestamps in ISO format][pr-28]
  * [Real time updates][i-40]
  * [Show changes saved to disk][i-34]
  * [Python NoneType errors][i-38]
  * [open vimdiff of current buffer][i-28]
  * [Add global_disable option][i-33]
  * [Reduce verbosity][i-31]
* [Neovim] support

#### What's your further plan?
* Make faster
* Automated test

<br>

### Requirements
* Vim ≥ *7.3* with `+python3` or `+python` options
* [Neovim] with [pynvim] installed
* Python ≥ *2.4*

Recommended vim settings:
```vim
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo
```

<br>

### Installation

It is recommended to use one of the popular plugin managers for Vim. There are
many and you probably already have a preferred one, but a few examples for your
copy-and-paste convenience:

#### Pathogen

    $ git clone https://github.com/simnalamburt/vim-mundo ~/.vim/bundle/mundo.vim

#### Vundle

```vim
Plugin 'simnalamburt/vim-mundo'
```

#### NeoBundle

```vim
NeoBundle 'simnalamburt/vim-mundo'
```

#### Vim-Plug

```vim
Plug 'simnalamburt/vim-mundo'
```

#### Manual (not recommended)

[Download](releases) the plugin and extract it in `~/.vim/` (or
`%PROGRAMFILES%/Vim/vimfiles` on Windows).

#### Unit tests
Tests unit tests can be run with [nose]:
```shell
cd autoload
nosetests
```

<br>

--------

*vim-mundo* is primarily distributed under the terms of the [GNU General Public
License, version 2] or any later version. See [COPYRIGHT] for details.

[pull requests]: https://github.com/sjl/gundo.vim/pulls
[undo tree]: https://neovim.io/doc/user/undo.html#undo-tree
[Gundo]: https://github.com/sjl/gundo.vim
[Official webpage]: https://simnalamburt.github.io/vim-mundo
[Introductory Video]: https://simnalamburt.github.io/vim-mundo/screencast.mp4
[Neovim]: https://neovim.io
[pynvim]: https://github.com/neovim/pynvim
[pr-29]: https://github.com/sjl/gundo.vim/pull/29
[pr-28]: https://github.com/sjl/gundo.vim/pull/28
[i-34]: https://bitbucket.org/sjl/gundo.vim/issue/34/show-changes-that-were-saved-onto-disk
[i-38]: https://bitbucket.org/sjl/gundo.vim/issue/38/python-errors-nonetype-not-iterable-with
[i-40]: https://bitbucket.org/sjl/gundo.vim/issue/40/feature-request-live-reload
[i-28]: https://bitbucket.org/sjl/gundo.vim/issue/28/feature-request-open-vimdiff-of-current#comment-3129981
[i-33]: https://bitbucket.org/sjl/gundo.vim/issue/33/let-g-gundo_disable-0-is-not-available
[i-31]: https://bitbucket.org/sjl/gundo.vim/issue/31/reduce-verbosity-of-the-list
[nose]: https://nose.readthedocs.org/en/latest/
[GNU General Public License, version 2]: LICENSE
[COPYRIGHT]: COPYRIGHT
