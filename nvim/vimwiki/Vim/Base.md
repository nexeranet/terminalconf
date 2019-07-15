set -o vi - set a terminal a vim mode
<C-a> и <C-x> выполняют сложение и вычитание чисел. При выполнении без счетчика они увеличивают и уменьшают.:q
<C-z> - hard exit from terminal app
:Rg <pattern> - search in files
:Ag <patter> - serch in files with list of result
:e open file

# FZF
control + t - open in new tag
control + v - open in v split
control + x - open in h split

'. - last edit section
:r file.json - paste a file in current file
:r! date - paste 'date' command in currentl line

0   _move_ to beginning of line
$   *move* to end of line
_   _move_ to first non-blank character of the line
g_  move to last non-blank character of the line

gg  move to first line
G   move to last line
ngg move to n'th line of file (n is a number; 12gg moves to line 12)
nG  move to n'th line of file (n is a number; 12G moves to line 12)
H   move to top of screen
M   move to middle of screen
L   move to bottom of screen

zz  scroll the line with the cursor to the center of the screen
zt  scroll the line with the cursor to the top
zb  scroll the line with the cursor to the bottom

Ctrl-D  move half-page down
Ctrl-U  move half-page up
Ctrl-B  page up
Ctrl-F  page down
Ctrl-O  jump to last (older) cursor position
Ctrl-I  jump to next cursor position (after Ctrl-O)
Ctrl-Y  move view pane up
Ctrl-E  move view pane down

# SERCHING

/cool
?cool
/[0-9]
d/[0-9]
dn
dN

n   next matching search pattern
N   previous matching search pattern
*   next whole word under cursor
\#   previous whole word under cursor
g*  next matching search (not whole word) pattern under cursor
g#  previous matching search (not whole word) pattern under cursor
gd  go to definition/first occurrence of the word under cursor
%   jump to matching bracket { } [ ] ( )

fX  to next 'X' after cursor, in the same line (X is any character)
FX  to previous 'X' before cursor (f and F put the cursor on X)
tX  til next 'X' (similar to above, but cursor is before X)
TX  til previous 'X'
;   repeat above, in same direction
,   repeat above, in reverse direction

# REPLACE

:s/dog/cat/g
:%s/dog/cat/g - every single line in file will be replace dog on cat
:'<,'>s/dog/cat/g - find in selection
g - global
