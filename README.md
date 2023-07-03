# Simple Ubuntu Configuration

This git is made for Ubuntu initial configuration.

The following assumes that you have just installed Ubuntu ~~because of build\-essential~~.

## What will be installed and set

1. build\-essential
    * gcc, g++, make and etc...
    * It will provide basic tools for build somethings.
2. vim
    * IDE
    * vi will automatically be replaced to vim.
3. curl
    * Web downloader
4. wget
    * Web access manager
5. tmux
    * Terminal window separator
    * You can separate windows with tmux.
    * The function key is `ctrl + q`
    * Several commands are aliased to shortcut.
        * `tmux ls` \-> `tls`
        * `tmux a` \-> `taa`
        * `tmux attach -t` \-> `ta`
    * The other commands which are used in the tmux session is set to default.
        * I recommend to search details on Google.
6. exuberant-ctags
    * Code tagger
    * The command is `ctags`.
        * The option `-R` is recommended
            * It will make ctags to tag the code recursivly.
        * You have to write `ctags` in the target directory.
    * tags file will be generated after calling ctags.
        * It contain all tags of your whole codes.
    * You can use ctags only on vi or vim.
    * If you enter `ctrl + ]` on the target object, you can find the definition or the declaration of the object.
    * You can return to previous codes with `ctrl + t`.
7. cscope
    * Code tagger
    * It will help you to tag codes with duplicated name.
    * I recommend moving the mkcscope.sh file to your home directory before using it.
        * `mv ./mkcscope.sh ~/`
    * You can make more detailed version of the tag file.
        * Just call `~/mkcscope.sh`
        * The tag file will be named to cscope.out
    * You can use cscope only on vi or vim.
    * The way how to use cscope is same with ctags.
8. snap
    * Application Downloader
    * It will be installed for ripgrep.
9. ripgrep
    * Code finder
    * `ripgrep` provides same function with `grep`.
    * You can use `ripgrep` with the command `rg`.
        * `rg -Ttags -Tcscope` is aliased to `rg`.
        * The above options mean that the search will exclude the tags and cscope files.
10. Vim plugins
    * Several plugins for vim will be installed.
        * Themes, Nerdtree, markdown-preview and etc.
        * I recommend to search details on Google.
    * If vim plugin install process stucks, enter `Enter`.
11. fzf
    * Shell history helper
    * It shows shell history to help you to find exact target command, options and arguments.
    * The command is `ctrl + r` in the terminal.

## Contents of git

* README.md
    * This file.
    * The document for this git.
* .ripgreprc
    * Detail configuration for ripgrep.
* .tmux.conf
    * Detail configuration for tmux.
* .vim\*
    * Several detail configurations for vim.
* aliases
    * Aliases for above applications.
    * It will be added to ~/.bashrc.
* config.sh
    * Installation script.
    * It will install and setup above all.
* mkcscope.sh
    * Shell script for cscope.
    * I recommend moving the mkcscope.sh file to your home directory.
        * Because it is convenient.

## How to configure

1. Install `git`.
    * `sudo apt install git`
    * It may need to `sudo apt update` and `sudo apt upgrade`.
2. Clone this git.
    * `git clone https://github.com/Susoon/Simple_Ubuntu_configuration.git`
3. Enter to this git directory and just run `./config.sh`
4. If it asks for yes or no, you can just enter whatever you want.
5. If vim plugin install process stucks, enter `Enter`.



