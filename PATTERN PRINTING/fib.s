#Complete the fibonacci as well as pattern function so that the program first generates fibonacci series and then prints the whole pattern in a right triangle pattern

# L-39
# L-71
#********************************************************************************************************************************
	.data
terms:		.asciiz		"ENTER THE NUMBER OF TERMS: "
fibo:		.asciiz		"THE CORRESPONDING FIBONACCI SERIES IS: "
space:		.asciiz		" "
triangle:	.asciiz		"\n\t"
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
	#    printf("%d", t1);
    	#    nextTerm = t1 + t2;
    	#    t1 = t2;
    	#    t2 = nextTerm;
    	# }
	
	li		$v0,	4							# Printing output message.
	la		$a0,	fibo
	syscall
	
	#********************************************************************************************************************************
	# Functon/loop to calculate and print fibonacci series.
	fibonacci:
		
	#Implement fibonacci function (hint: use recurrsion)
	li		$v0,	4							# Printing out the space.
	la 		$a0,	space
	syscall
	
	li		$v0,	1							# Print fibonacci term.
	move		$a0, 	$t1
	syscall
	
	addi	$t3, 	$t3, 	1							# Update counter variable.
	  
	add	$t4,	$t1,	$t2							# nextterm = t1 + t2
	move	$t1,	$t2								# t1 = t2
	move 	$t2, 	$t4								# t2 = nextTerm
	
	ble	$t3, 	$t0, 	fibonacci						# Checking condition i<=n	i:$t3	n:$t0
	#********************************************************************************************************************************
	
	jal pattern									# Call pattern subroutine
	
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
		
	#********************************************************************************************************************************
	pattern:

	#Implement pattern function (hint: use for loop)
	
	# Initialising the variables needed.
	li		$t1,	0							# First term = 0.
	li		$t2,	1							# Second term = 1.
	li		$t4,	0							# Next term of series.
	
	li		$t3,	1							# Counter variable reset to 1.
	li		$t5,	1							# Number of columns in row.
	li 		$t6,	0							# Counter for row printing.
	
	li		$v0,	4							# Printing out nextline.
	la 		$a0,	triangle
	syscall
	
	loop:
		li		$v0,	4						# Printing out the space.
		la 		$a0,	space
		syscall
	
		li		$v0,	1						# Print fibonacci term.
		move		$a0, 	$t1
		syscall
		
		addi	$t6,	$t6, 	1						# Update counter variable for row.
		
		beq 	$t5,	$t6, 	nextline
		j continue
		
		nextline:
		
			li		$v0,	4					# Printing out nextline.
			la 		$a0,	triangle
			syscall
			
			addi	$t5,	$t5,	1					# Increment number of column per row
			li 		$t6,	0					# Reset counter for row printing.
			
		continue:
		
			addi	$t3, 	$t3, 	1					# Update counter variable.
	  
			add	$t4,	$t1,	$t2					# nextterm = t1 + t2
			move	$t1,	$t2						# t1 = t2
			move 	$t2, 	$t4						# t2 = nextTerm
	
			ble	$t3, 	$t0, 	loop					# Checking condition i<=n	i:$t3	n:$t0
		
		
	exit:
		
		jr $ra











	#********************************************************************************************************************************

	.end main
