start  cpta zero base i
	   add i one i
	   cpta one base i
	   add i one i 
beg	   add first i neg_1
	   add second i neg_2
	   cpfa holder1  base first
	   cpfa holder2  base second
	   add curr holder1 holder2
	   cpta curr base i
	   add i one i
	   bne beg i fifty
invert 

	  halt


i     .data 0
first .data 1
second .data 2
neg_1  .data -1
neg_2   .data -2
holder1 .data 0
holder2 .data 0
term    .data 0
one      .data 1
fifty    .data 20
zero     .data 0
curr     .data 0
base     .data 5
