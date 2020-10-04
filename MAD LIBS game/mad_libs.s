#Complete the part where the program takes words and strings as input

# L-28
# L-37
# L-55
# L-66
# L-83
# L-95
# L-119
#********************************************************************************************************************************
	.data
welcome:		.asciiz		"\t\t\tWELCOME TO THE GAME OF MAD-LIBS!\n\n"
phrase_1:		.asciiz		"I met a / an "
phrase_2:		.asciiz		"When I saw "
phrase_3:		.asciiz		"I asked, How is your "
ending:			.asciiz		"\n\t\t\t NOW READ AND ENJOY!\n\t\t\tTHANK YOU FOR PLAYING!\n"
space:			.space		500
	.text
main:
	li		$v0,	4						# Prints the message.
	la		$a0,	welcome
	syscall
	
	la		$a0,	phrase_1
	syscall
	
	#********************************************************************************************************************************
	# Input string.
	
	
	
	
	
	
	
	
	# Loading the space given to it in the register.
	
	
	
	
	
	
	
	
	
	
	#********************************************************************************************************************************
	
	li		$v0,	4
	la		$a0,	phrase_2
	syscall
	
	#********************************************************************************************************************************
	# Input string.
	
	
	
	
	
	
	
	
	
	
	# Loading the space given to it in the register.
	
	
	
	
	
	
	
	
	
	#********************************************************************************************************************************
	
	li		$v0,	4
	la		$a0,	phrase_3
	syscall
	
	#********************************************************************************************************************************
	# Input string.
	
	
	
	
	
	
	
	
	
	
	
	# Loading the space given to it in the register.
	
	
	
	
	
	
	
	
	
	
	
	#********************************************************************************************************************************
	
	li		$v0,	4
	la		$a0,	ending
	syscall
	
	li		$v0,	10						# Termination call.
	syscall
	
.end main

	#********************************************************************************************************************************
	# Sky is the limit!!! :D........make your own story
	# It's your life. Make it large ;)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	#********************************************************************************************************************************
