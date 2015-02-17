start 		call start_init ra_init 0
ra_init 	be check one init_fin
			halt 0 0 0
check 		call start_rot13 ra_rot13 0
ra_rot13	halt 0 0 0




//data
init_fin .data 0
reset .data 0
base .data 0
base1 .data 0
base2 .data 0
base3 .data 0
base4 .data 0
base5 .data 0
base6 .data 0
o   .data 111
e   .data 101
h   .data 104
l   .data 108
rot1 .data 0
rot2 .data 0
rot3 .data 0
rot4 .data 0
rot5 .data 0
rot6 .data 0
i   .data 0 
one .data 1
five .data 5
middle .data 109
thirteen .data 13


//intialzation function 
start_init cpta h base i 
      	add i one i
      	cpta e base i
      	add i one i
      	cpta l base i
      	add i one i
      	cpta l base i
      	add i one i
      	cpta o base i
      	cp i reset
done_init return ra_init

//rot13_func
start_rot13 cpfa holder base i
			blt less_rot13 holder middle
			sub holder holder thirteen
			be copy_rot13 0 0
less_rot13	add holder holder thirteen
			cpta holder rot1 i
			add i one i
			bne start_rot13 i five
			cp i reset 0
			return ra_rot13