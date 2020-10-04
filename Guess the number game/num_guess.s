# Complete guess 1,2,3,4,5 functions to make program work

# L-39
# L-61
# L-84
# L-108
# L-132
# L-157

#********************************************************************************************************************************
		.data
wel:	.asciiz "\t\t\tWELCOME TO NUMBER GUESSING GAME\n\n"
myarr:	.word 2 6 3 1 4 8 5 7 10 9
inp:	.asciiz "\nEnter the index(0-9) of a secret array: "
gss1:	.asciiz "\nEnter your 1st guess: "
gss2:	.asciiz "\nEnter your 2nd guess: "
gss3:	.asciiz "\nEnter your 3rd guess: "
gss4:	.asciiz "\nEnter your 4th guess: "
gss5:	.asciiz "\nEnter your 5th guess: "
wn:		.asciiz "\n\nCongratulations!!! You have guessed the number correctly!"
score:	.asciiz "\nYour Score is: "
lst:	.asciiz "\n\nSorry :( ..... Better luck next time"
wrong:	.asciiz "\nWrong guess, try again!!!\n\n"

		.text
main:	li $v0, 4							# Prints the message.
		la $a0, wel
		syscall

		li $v0, 4
		la $a0, inp
		syscall

		li $v0, 5							# Input integer index.
		syscall
		move $t0, $v0
		
		#********************************************************************************************************************************
		# Taking an element from the array in form of index.
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

guess1:	li $v0, 4
		la $a0, gss1
		syscall

		li $v0, 5
		syscall
		move $t4, $v0
		
		#********************************************************************************************************************************
		# Guessing logic and computing score.
		
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

guess2:	li $v0, 4
		la $a0, gss2
		syscall

		li $v0, 5
		syscall
		move $t4, $v0
		
		#********************************************************************************************************************************
		# Guessing logic and computing score.
		
		
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

guess3:	li $v0, 4
		la $a0, gss3
		syscall

		li $v0, 5
		syscall
		move $t4, $v0
		
		#********************************************************************************************************************************
		# Guessing logic and computing score.
		
		
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

guess4:	li $v0, 4
		la $a0, gss4
		syscall

		li $v0, 5
		syscall
		move $t4, $v0
		
		#********************************************************************************************************************************
		# Guessing logic and computing score.
		
		
		
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

guess5:	li $v0, 4
		la $a0, gss5
		syscall

		li $v0, 5
		syscall
		move $t4, $v0
		
		#********************************************************************************************************************************
		# Guessing logic and computing score.
		
		
		
		
		
		
		
		
		
		
		
		#********************************************************************************************************************************

win:	li $v0, 4
		la $a0, wn
		syscall	

		li $v0, 4
		la $a0, score
		syscall

		li $v0, 1
		move $a0, $t5
		syscall
		j quit

lost:	li $v0, 4
		la $a0, lst
		syscall	
		j quit

quit:	li $v0, 10
		syscall
