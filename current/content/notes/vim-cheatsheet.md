---
title: "vim cheatsheet"
date: 2022-02-27
categories:
- cheatsheets
tags:
- vim
---

* Modes
  * `i` = insert mode
  * `v` = visual mode
    * `~` = switch case
    * `d` = delete marked text
    * `y` = yank (copy) marked text 
    * `u` = change marked text to lowercase
    * `U` = change marked text to uppercase
  * `Esc` = exit insert or visual mode
    * `:q` = quit
    * `:wq` = quit and save changes
    * `:q!` = quit and discard changes
    * `:w` = save
    * `dd` = delete line
    * `p` = paste before cursor
    * `P` = paster after cursor
    * `0` = jump to the start of the line
    * `$` = jump to the end of the line
    * `{` = jump to previous paragraph
    * `}` = jump to next paragraph
    * `H` = move to top of the screen
    * `M` = move to middle of the screen
    * `L` = move to bottom of the screen
    * `gg` = go to first line of document
    * `G` = go to last line of document
    * `u` = undo
    * `Ctrl+r` = redo