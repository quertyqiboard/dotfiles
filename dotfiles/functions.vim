function GetSpell()
	if &spell
		echo "Toggling spelling off"
		set spell!
	else
		echo "Toggling spelling on"
		set spell
	endif
endfunction

function SpellEn()
	if &spell
		echo "Spell language now is English (US)"
		set spelllang=en_us
	else
		echo "Toggling spell, language now is English (US)"
		set spell
		set spelllang=en_us
	endif
endfunction

function SpellDe()
	if &spell
		echo "Spell language now is German (Germany)"
		set spelllang=de_de
	else
		echo "Toggling spell, language now is German (Germany)"
		set spell
		set spelllang=de_de
	endif
endfunction

function SpellEs()
	if &spell
		echo "Spell language now is Spanish"
		set spelllang=es
	else
		echo "Toggling spell, language now is Spanish"
		set spell
		set spelllang=es
	endif
endfunction

function! FixLastSpellingError()
	normal!	mm[s1z=`m
endfunction
function AddGoodList()
	normal! [szg
endfunction
