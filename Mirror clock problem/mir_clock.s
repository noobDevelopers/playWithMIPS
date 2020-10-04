# Complete the logic which computes the inverted reading of clock(analog) on a mirror

# L-32
#********************************************************************************************************************************
		.data
hr:		.asciiz "Enter the hrs(question): "
min:	.asciiz "Enter the min(question): "
Hr:		.asciiz "\nMirrored hrs: "
Min:	.asciiz "\nMirrored mins: "
		
		.text
main:	
		li $v0,	4								# Prints the message.
		la $a0, hr
		syscall

		li $v0,	5								# Input hours(int).
		syscall
		move $t0, $v0

		li $v0,	4
		la $a0,	min
		syscall

		li $v0,	5								# Input minutes(int).
		syscall
		move $t1, $v0

		li $s0, -1								# Loads -1 into the register, i.e., $s0 = -1
	
	#********************************************************************************************************************************
	# Implement your logic to calculate the time as the input time is seen in a mirror.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	#********************************************************************************************************************************
		
		li $v0,	4
		la $a0, Hr
		syscall

		li $v0,	1								# Print mirrored hrs.
		move $a0, $t2
		syscall

		li $v0,	4
		la $a0,	Min
		syscall

		li $v0,	1								# Prints mirrored minutes.
		move $a0, $t3
		syscall

		li $v0,	10								# Termination call.
		syscall
		
.end main
