
# The (Argueably) Good Way to Use This Setup

If you decided to use this setup then there are a few things you
should know in order to make you digest all of it a lot easier.

## Prerequisite
Nothing big and fancy just a few basic one.
1. neovim - this is due to the plugin treesitter. If you decide to not use it then feel free to use normal vim.
2. Node - This is for the autocompletion coc.nvim, again if you don't want to use the plugin mentioned then feel free to skip it.
3. fzf - Fuzzy finder, I don't know why you want to skip this but if you do then don't install it.
4. vifm - Terminal file manager, once again skip it if you don't plant on using one.
5. Vim-Plug - Vim Plugin manager, you can change this with any vim plugin manager you want.

With that being said and done I'll be covering the things that exist on this particular vim-setup.



## The Core
There are quite a lot of plugins I used, the sheer number of lines makes it pretty daunting
(and maybe a little bit bloated). But overall there are only a few plugins that I often used
or the ones I deemed as important, the rest are either superficial or just an extension.
Here's a list of the important ones.

### coc.nvim
Arguably the most important plugin of them all coc.nvim is an intellisense that will make the coding
life a lot easier. It works the same way as how VSCode works, you can install extensions for it so
that an LSP of a programming language of your choice can be selected. There's also other extensions
such as tree explorer, esnippets, and many more.

Although it's not all without drawback, one of them being the necessity to use node which can be a
little bit tricky if you decided to install multiple versions of it. Setting the lsp for java can be a
pain, and it could lead you to overly depended on it or unknowningly make your vim slow due to how many
extensions it had, making you capable of letting loose.

But again it's powerful. So powerful to the point I don't care about the drawbacks at all 
(well most of the time). 

#### LSP
Once you manage to make coc.nvim accepts your programming language of choice lsp you'll gain a steadfast and powerful
ally in your daily wars with editing files. The basic ones like auto complete function or showing the methods that exist
when you type '.' after a library or an object is the same as in other IDE. What really stands out to me is the ability
to easily go through every stage of files according to your need.

One of the useful commands is to cycle through the lines of error. coc.nvim will show which line that causes a compile error
and just by pressing " [g" or " ]g" you can easily cycle through each lines of errors rather than typing the line number
manually or (lord forbids) by scrolling there with and click it with a mouse.

Another useful feature that I often used is the Go to Definition and Go to References method. The former would make you jump
to the targeted class or function just by pressing " gd" while the letter will show you all instaces where the object/method
was referenced by pressing " gr".

Aside from those there are a couple of feature that may prove to be useful like the renaming function which allow you to change
the name of something not only at the instance where you change it but all the places where the variable was referenced at. Or
the many methods available in CocCommand.

#### snippets
This isn't exactly a coc.nvim only thing but since I installed snippets in coc.nvim by installing the extension coc-snippets
I might as well as add it to this subsection.  Snippets are basically alias you write in order to make it transform to 
something else. You can check out the many snippets that exist by pressing " fm" to fuzzy search all the snippets 
available for the particular filetype you're in. If you want to edit it you can take advantage of the CocCommand 
method or type " fcs" and fuzzy search snippets.editSnippets to create a snippet.

If you're lazy you can just add other people snippets.

### fzf
Another important plugin, or rather program since this is not a vim exclusive thing. FZF is a fuzzy finder that's capable of searching for folders 
and files quickly. You can of course extend this powerful utility by installing Rg, making it so not only can you fuzzy search for 
file/folder names buat you can also look for it's contents.

I use this pretty often since when I'm programming I need tsearch for a file and open in. I also use fzf whenever I need 
to find a a file that has a specific file but I don't really remember where it is. There's also the case where I need 
to go through the list of buffers, history commands, etc.

You get the idea.

With this powerful utility you can surf your way through directories and files as easily. Want to go to
a file? Press " fi" and fuzzy search it. Want to look through the files you've opened up in a buffer? " fbl"
is all you need to type. See snippets? " fs". Switch git branches? " gb". Search history commands? " fh".
You can even choose to swtich colorscheme by pressing " fco". There's also a few others but I figured you'll
read them if you're curious.


## Buttons To Press
Technically you can view this when you press leader key (which is space), but I figured I'll give you the ones I often time use


