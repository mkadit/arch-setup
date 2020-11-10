# The (Argueably) Good Way to Use This Setup

If you decided to use this setup then there are a few things you
should know in order to make you digest all of it a lot easier.


#Table of Content

* [The Appetiser](#the-appetiser)
* [The Main Dish](#the-main-dish)
    * [coc.nvim](#cocnvim)
        * [LSP](#lsp)
        * [snippets](#snippets)
    * [fzf](#fzf)
    * [Emmet](#emmet)
    * [tpope's Plugins](#tpopes-plugins)
* [The Sidedish](#the-sidedish)
    * [Fern](#fern)
    * [Vista](#vista)
    * [Startify](#startify)
    * [VimWiki](#vimwiki)
    * [Undotree](#undotree)
* [Aesthetics](#aesthetics)
    * [base16-vim/awesome-vim-colorscheme/dracula/sonokai/etc](#base16-vimawesome-vim-colorschemedraculasonokaietc)
    * [Lightline](#lightline)
    * [Nerdfont.vim](#nerdfontvim)
* [How to use it?](#how-to-use-it)

<!-- vim-markdown-toc -->

## The Appetiser
Nothing big and fancy just a few basic one.
1. neovim - this is due to the plugin treesitter. If you decide to not use it then feel free to use normal vim.
2. Node - This is for the autocompletion coc.nvim, again if you don't want to use the plugin mentioned then feel free to skip it.
3. fzf - Fuzzy finder, I don't know why you want to skip this but if you do then don't install it.
4. vifm - Terminal file manager, once again skip it if you don't plant on using one.
5. Vim-Plug - Vim Plugin manager, you can change this with any vim plugin manager you want.

With that being said and done I'll be covering the things that exist on this particular vim-setup.



## The Main Dish
There are quite a lot of plugins I used, the sheer number of lines makes it
pretty daunting (and maybe a little bit bloated). But overall there are only a
few plugins that I often used or the ones I deemed as important, the rest are
either superficial or just an extension.  Here's a list of the important ones.

### coc.nvim
Arguably the most important plugin of them all coc.nvim is an intellisense that
will make the coding life a lot easier. It works the same way as how VSCode
works, you can install extensions for it so that an LSP of a programming
language of your choice can be selected. There's also other extensions such as
tree explorer, esnippets, and many more.

Although it's not all without drawback, one of them being the necessity to use
node which can be a little bit tricky if you decided to install multiple
versions of it. Setting the lsp for java can be a pain, and it could lead you
to overly depended on it or unknowningly make your vim slow due to how many
extensions it had, making you capable of letting loose.

But again it's powerful. So powerful to the point I don't care about the
drawbacks at all (well most of the time).

#### LSP
Once you manage to make coc.nvim accepts your programming language of choice
lsp you'll gain a steadfast and powerful ally in your daily wars with editing
files. The basic ones like auto complete function or showing the methods that
exist when you type '.' after a library or an object is the same as in other
IDE. What really stands out to me is the ability to easily go through every
stage of files according to your need.

One of the useful commands is to cycle through the lines of error. coc.nvim
will show which line that causes a compile error and just by pressing ` [g` or
` ]g` you can easily cycle through each lines of errors rather than typing the
line number manually or (lord forbids) by scrolling there with and click it
with a mouse.

Another useful feature that I often used is the Go to Definition and Go to
References method. The former would make you jump to the targeted class or
function just by pressing `<leader> gd` while the letter will show you all
instaces where the object/method was referenced by pressing `<leader> gr`.

Aside from those there are a couple of feature that may prove to be useful like
the renaming function which allow you to change the name of something not only
at the instance where you change it but all the places where the variable was
referenced at. Or the many methods available in CocCommand.

#### snippets
This isn't exactly a coc.nvim only thing but since I installed snippets in
coc.nvim by installing the extension coc-snippets I might as well as add it to
this subsection.  Snippets are basically alias you write in order to make it
transform to something else. You can check out the many snippets that exist by
pressing `<leader> fm` to fuzzy search all the snippets available for the
particular filetype you're in. If you want to edit it you can take advantage of
the CocCommand method or type `<leader> fcs` and fuzzy search
snippets.editSnippets to create a snippet.

If you're lazy you can just add other people snippets.

### fzf
Another important plugin, or rather program since this is not a vim exclusive
thing. FZF is a fuzzy finder that's capable of searching for folders and files
quickly. You can of course extend this powerful utility by installing Rg,
making it so not only can you fuzzy search for file/folder names buat you can
also look for it's contents.

I use this pretty often since when I'm programming I need tsearch for a file
and open in. I also use fzf whenever I need to find a a file that has a
specific file but I don't really remember where it is. There's also the case
where I need to go through the list of buffers, history commands, etc.

You get the idea.


### Emmet
Yeah go figured. Emmet is just that wonderful, just type everthing in a single
ine then press `,` twice in a quick sucession and then like magic a whole bunch
of elements suddenly summoned. Need I to explain more?

With this powerful utility you can surf your way through directories and files
as easily. Want to go to a file? Press `<leader> fi` and fuzzy search it. Want
to look through the files you've opened up in a buffer? `<leader> fbl` is all
you need to type. See snippets? `<leader> fs`. Switch git branches? `<leader>
gb`. Search history commands? `<leader> fh`.  You can even choose to swtich
colorscheme by pressing `<leader> fco`. There's also a few others but I figured
you'll read them if you're curious.

### tpope's Plugins
Tpope's Plugin are useful, it'll make life much much easier (at least for me).
Having trouble commenting your a line of code? vim-commentary got you cover.
Want to change that double quotes to a single, vim surround to the rescue. Want
to do some fancy git stuff but don't want to leave vim? Don't worry fam,
vim-fugitive got it handled.

It's a little hard to appreciate, but you'll understand once you use them. Make
a line comment with `<leader> gcc`, change single quotes with a square brackets
with `<leader>cs']`. Do fancy git stuf with `<leader> gs` for git status,
`<leader> s` to stage them, `<leader> cc` to commit them and so on and so
forth.

That's it for the core. The rest of the plugins are just things that I would
use seldomly, or simply for pure Aesthetics :D.

## The Sidedish
I've already covered the core plugins. The ones I often use and deem are
important but what about the rest? Well they're plugins that I found to be
quite handy but not used as many or I deem as important as the the previous
mentioned plugins. They're just there to make life a lot simpler, here's a list
of them:

### Fern
Tree explorer are kind of a hit and miss for me. On one hand it can be a pain
to navigate through them on the other hand they can serve as a reference for
your list of files in a project, which is nice since I tend to forget what
files I have and their paths.

So out of the many tree explorer plugins why Fern? Well NERDTree explorer was
too slow, netrw is too much of hassle for me (and lack the pretty colors I
want), and coc-explorer can't exactly replace netrw when I type `vim .`. Fern
on the other hand is fast, have pretty blings blings, and can force replace
netrw when I type `vim .` (not that I use it that much).

### Vista
Sometimes in projects there would comes a time where you would have one single
file consisting of many method (or even classes) where the total line for them
all would reach 300 or more. Sure COC ability to Go to definition allows me to
jump to each function or class but listing them all is a pain. Vista
practically solves this problem by listing the tags that exist inside a file to
a new pane (basically a tree explorer but it just list tags instead).

So why this and not something like ctagbar? Honestly nothing, I just
coincidentally found this and it works pretty nice so I don't see any reason to
change to anything else. Plus it's interegation with LSP makes it even less
appealing to move on.

### Startify
There would comes a time where I would like to just open Vim and you know just
go to a session and load all the files in that sessions. Of course you can do
this with vim innate function `mks (path)` and source them when you need it.
But I'm too lazy to type them, hence the reason to use Startify. Not only does
it make me save and load sessions quickly but it also allows me to load a file
I previously opened or in my current working directory. It also helps that I
can make it look cool, kinda like a glorified logins screen.

### VimWiki
You know how you would lose track of what you're suppose to do when you boot up
your computer? Or that moment where you would forgot where you last left off in
your project before you decided to go and shut the computer down to play some
nice gaming session of tetris before sleeping off? I do, and I experience them
plenty enough which is where VimWiki comes in and save my skin.

Press `<leader>ww` to open the index wiki file. Usually there I'll have a to-do
list stored, each for the task today and the deadlines I have each with their
own tasks. If there's anything that I deemed needed a page of it's own I'll
simply press enter on the word and make it cerate it's own wiki page.

There's other stuff as well like notes, diaries, etc. But you'll probabl
figure it on your own.

### Undotree
There will be that moment where you just want to go back to a state before you
amde changes but you've already gone too far. When that happens instead of
using `u` for an immesurable amount of time you can just type `<leader>eu` to
toggle the undo-tree. Here you can choose which state you want the file return
to with ease, the fact that it comes with a diff between that version and the
current version is just a cherry on top of it.

## Aesthetics

### base16-vim/awesome-vim-colorscheme/dracula/sonokai/etc
They're colorscheme, that's it. Maybe I went overboard looking at the many
colorschemes I have when I press `<leader>fco`, but I got bored of colorschemes
pretty quickly so I tend to change it once in a while. You can just unsintall
it if you want though.

### Lightline
You know how your line above the command line where it shows what mode you're
on what line you're on etc? Yeah, I don't really like how it just feels empty
hence the reason I installed Lightline to make it all colorful and not boring
to watch. It also displays what branch I'm on and what file I'm on so that's a
plus.

There's also tmuxline, and lightline-bufferline installed. They do the same
thing but the former is for tmux while the latter is to make the buffers you
have lined up on top.

### Nerdfont.vim
Plugins for to make nerfont works in vim. That's it.

## How to use it?
Technically you can view this when you press leader key (which is space) or
simply view the vimrc, but I figured I'll give you a quick rundown for the
useful stuffs and how to use them since I guess you'll be confused on how to
use it all together.

Open up vim, if you choose to open it with no file then a startup page will
show up consisting of the files in your current directory, history of opened
files, bookmarked files, and sessions. Open up a file by either selecting a
file/session, or if you would use Fern to open a tree explorer by pressing
`<leader>n` or if you know where the file is use FZF and search for the file by
pressing `<leader>fi` and choose the file you want to edit.

Once you go to a file you can edit it as usual.
