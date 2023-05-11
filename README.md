<h1 align="center"> ✨ Robert's dotfiles + keymaps ✨ </h1>

## Robert's dotfiles
My selected .dotfiles

## Robert's keymaps

### Swaywm

Legend:
- \<leader\> - Windows key
- S - Shift key 
- C - Control key 

| Keymap | Action |
|---|---|
| \<leader\>ENTER | Opens new terminal  |
| \<leader\>Sc | Reloads Sway config  |
| \<leader\>Se | Exits Sway |
| \<leader\>d | App launcher|

Workspaces

| Keymap | Action |
|---|---|
| \<leader\>1 | Jump to workspace 1 |
| \<leader\>2 | Jump to workspace 2 |
| \<leader\>n | Jump to workspace n |
| \<leader\>0 | Jump to workspace 10 |
| \<leader\>- | Jump to workspace 11 |
| \<leader\>= | Jump to workspace 12 |

### Tmux

Legend:
- \<leader\> - C-a 

Commands
| Command | Action |
|---|---|
| `tmux new -s session1` | creates new session session1 |
| `tmux new -s session1 -d ` | creates new session session1 and detaches |
| `tmux detach` | detach from current session |
| `tmux attach -t session1` | attach to specific session |
| `tmux ls` | list sessions |
| `tmux kill-server` | kills all sessions (and server) gracefully |
| `tmux kill-session -t session1` | kills session session1 |
| `tmux kill-session -a` | kills all sessions |

Keymaps within `tmux`
| Keymap | Action | Topic |
|---|---|---|
| \<leader\>\-s  | show sessions | Sessions |
| :new  | create new session | Sessions |
| \<leader\>\-$  | rename session | Sessions |
| \<leader\>\-d  | detach from session | Sessions |
| \<leader\>\-\| | split window into 2 panes vertically | Panes |
| \<leader\>-  | split window into 2 panes horizontally | Panes |
| C\-h | jump to left pane | Panes |
| C\-j | jump to down pane | Panes |
| C\-k | jump to up pane | Panes |
| C\-l | jump to righ pane | Panes |
| \<leader\>\-h  | resize current pane | Panes |
| \<leader\>\-j  | resize current pane | Panes |
| \<leader\>\-k  | resize current pane | Panes |
| \<leader\>\-l  | resize current pane  | Panes |
| \<leader\>\-m  | maximise pane | Panes |
| \<leader\>\-c  | create new window | Windows |
| \<leader\>\-0  | navigate to window nr 0 | Windows |
| \<leader\>\-1  | navigate to window nr 1 | Windows |
| \<leader\>\-p  | navigate to previous window | Windows |
| \<leader\>\-n  | navigate to next window | Windows |
| \<leader\>\-,  | rename window | Windows |
| \<leader\>\-w  | show windows | Windows |
| \<leader\>\-?  | show all keybindings | help |
| \<leader\>\-:  | enter the command line to type commands (use tab for completition)| commands |

### (Neo)VIM

Keymaps within `nvim`
| Keymap | Action |
|---|---|
| v | enter Visual mode and start selection |
| V | select current line |
| C-q | enter Visual Block |
| C-q I | enter Visual Block and Insert |
| C-q I (comment symbol) Esc | multiline comments |
| C\-h | jump to left window |
| C\-j | jump to down window |
| C\-k | jump to up window |
| C\-(left/right/up/down) | resize ewindow |
| C\-w q | close window |
| C\-w o | close all other windows |
| C\-w _ | max out height of window |
| C\-w \| | max out weight of window |

