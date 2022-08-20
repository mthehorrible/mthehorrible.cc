---
title: "tmux cheatsheet"
date: 2022-02-27
categories:
- cheatsheets
tags:
- tmux
---

* List tmux sessions: `tmux ls`
* Attach to a tmux session: `tmux attach -t 0`
* Attach to last active tmux session: `tmux a`
* Press ctrl+b to issue a key binding
* Key bindings
  * c = new window
  * d = detach from tmux session
  * n = next window
  * p = previous window
  * w = list all windows
  * x = remove a pane
  * $ - rename session
  * % = split vertically
  * & = remove a window
  * " = split horizontally
  * ? = list key bindings
  * Arrow keys = move to pane in that direction
* Copy/Paste
  * `Ctrl+b` `[` = enter copy mode
  * `Ctrl+space` = start beginning of copy
  * `Ctrl+w` = mark end of copy
  * `Ctrl+b` `]` = paste
  * To copy/paste with mouse hold shift