# Complete the addition, subtraction, multiplication, and division functions, so that the program works as a calculator.

# L-32
# L-45
# L-86

#********************************************************************************************************************************
	.data
num_1:		.asciiz		"ENTER 1st NUMBER: "
num_2:		.asciiz		"ENTER 2nd NUMBER: "
option_1:	.asciiz		"\n1. ADDITION."
option_2:	.asciiz		"\n2. SUBTRACTION."
option_3:	.asciiz		"\n3. MULTIPLICATION"
option_4:	.asciiz		"\n4. DIVISION."
option_5:	.asciiz		"\n5. NEW NUMBERS.\n"
choice:		.asciiz		"\nENTER YOUR CHOICE: "
new_line:	.asciiz		"\n"
equals:		.asciiz		" = "
sum:		.asciiz		" + "
subtract:	.asciiz		" - "
multiply:	.asciiz		" x "
divide:		.asciiz		" / "
message:	.asciiz		"INVALID CHOICE!"
exit:		.asciiz		"\nDO YOU WANT TO EXIT?(0 for yes): "
	.text
main:
	li		$v0,	4							# Prints string.
	la		$a0,	num_1
	syscall
	
	#**********************************************************************************************************************
	# Input 1st integer.
	
	li $v0,5
	syscall
	move $t0,$v0
	
	
	
	
	
	#**********************************************************************************************************************
	li		$v0,	4
	la		$a0,	num_2
	syscall
	#**********************************************************************************************************************
	# Input 2st integer.
	
	
	li $v0,5
	syscall
	move $t1,$v0
	
	
	
	
	#**********************************************************************************************************************
		
	# Menu for different operations.	
	menu:
		li 		$v0,	4
		la		$a0,	option_1
		syscall
		
		la		$a0,	option_2
		syscall
		
		la		$a0,	option_3
		syscall
		
		la		$a0,	option_4
		syscall
		
		la		$a0,	option_5
		syscall
	
	li		$v0,	4
	la		$a0,	choice
	syscall
	
	li		$v0,	5
	syscall
	move	$t2,	$v0
	
	li		$v0,	4
	la		$a0,	new_line
	syscall
	
	#********************************************************************************************************************************
	# Addition Functon.
	addition:
		
	#Implement addition function (hint: use for loop)


		add $a0,$t0,$t1
		
		li $v0, 1
		syscall







		j		menu								# Control goes back to menu function.
	
	# Subtraction Functon
	subtraction:
		
	#Implement subtraction function (hint: use for loop)



		sub $a1,$t0,$t1
		
		li $v0,1
		syscall





		j		menu
		
	# Multiplication Function
	multiplication:
		
	#Implement multiplication function (hint: use for loop)








		j		menu
	
	# Division Function
	division:
		
	#Implement division function (hint: use for loop)









		j		menu
	#********************************************************************************************************************************
	
	# Function To Generate New Numbers.
	new_num:
		bne		$t2,	5,		check				# If $t2 != 5 then goto check.
		
		li		$v0,	4
		la		$a0,	num_1
		syscall
	
		li		$v0,	5
		syscall
		move	$t0,	$v0
	
		li		$v0,	4
		la		$a0,	num_2
		syscall
	
		li		$v0,	5
		syscall
		move	$t1,	$v0
		
		li		$v0,	4
		la		$a0,	new_line
		syscall
		
		j		menu
		
	# Function To Check If User Wants To Exit.
	check:
		li		$v0,	4
		la		$a0,	message
		syscall
		
		la 		$a0,	exit
		syscall
		
		li		$v0,	5
		syscall
		move	$t4,	$v0
		
		beq		$t4,	0,		terminate			# If $t4 == 0 then goto terminate.
		
		j 		menu
	
	# Program Termination.
	terminate:
		li		$v0,	10
		syscall
		
.end main
