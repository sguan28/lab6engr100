start     	call fib fib_ra
         	cp winner lover
check       blt array_init i winner
		  	be end 0 0 
array_init	cpta fib_sum base i 
			add i one i 
			be check 0 0
end			cpfa winner fib_ra i
			halt	




fib 	  be fib_ret fib_i fifteen
		  add fib_i one fib_i
		  add fib_sum fib_n1  fib_n2
		  cp fib_n2 fib_n1
		  cp fib_n1 fib_sum
		  be fib 0 0
fib_ret	  ret fib_ra

fib_i 	.data 0
fib_sum .data 500
fib_n1  .data 1
fib_n2  .data 0
one     .data 1
fifteen .data 7
look1    .data 69
winner  .data 33
look2   .data 69
array_size .data 0
i 		.data 0
lover .data 30
fib_ra .data 0
base .data 400
