norom

incsrc "defines.asm"
incsrc "edits.asm"
incsrc "hijacks.asm"

%org($00, bank0_new_free_space)
incsrc "timer.asm"
warnpc $bd36

incsrc "misc.asm"