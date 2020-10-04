#Complete the fibonacci as well as pattern function so that the program first generates fibonacci series and then printf the whole pattern in a right triangle pattern

	.data
terms:		.asciiz		"ENTER THE NUMBER OF TERMS: "
fibo:		.asciiz		"THE CORRESPONDING FIBONACCI SERIES IS: "
space:		.asciiz		" "
	.text
main:
	li		$v0,	4							# Printing out the message.
	la 		$a0,	terms
	syscall
	
	li		$v0,	5							# Input integer.
	syscall
	move 	$t0,	$v0
	
	# Initialising the variables needed.
	li		$t1,	0							# First term = 0.
	li		$t2,	1							# Second term = 1.
	li		$t3,	1							# Counter variable.
	li		$t4,	0							# Next term of series.
	
	# This loop calculates the fibonacci series.
	# for(i = 1; i <= n; ++i)
	# {
	#	 printf("%d", t1);
    #    nextTerm = t1 + t2;
    #    t1 = t2;
    #    t2 = nextTerm;
    # }
	
	li		$v0,	4							# Printing output message.
	la		$a0,	fibo
	syscall
	
	# Functon/loop to calculate and print fibonacci series.
	fibonacci:
		
								#Implement fibonacci function (hint: use recurrsion)

	# Ending of program.
	terminate:
		li		$v0,	10						# Tells the system to terminate.
		syscall
		

		# Complete the above fibonacci function and implement a right angle triangle pattern

		# 0
		# 1 1
		# 2 3 5
		# 8 13 21 34
		# ............... 	and the pattern continues

	pattern:

								#Implement pattern function (hint: use for loop)

	.end main
