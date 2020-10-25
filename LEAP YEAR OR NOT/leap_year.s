#Complete the leap_year function

	.data
year:		.asciiz		"ENTER ANY YEAR: "
leap:		.asciiz		"THE YEAR "
leap_yes:	.asciiz		" IS A LEAP YEAR."
leap_no:	.asciiz		" IS NOT A LEAP YEAR."
	.text
main:
	li		$v0,	4								# Printing out the message.
	la		$a0,	year
	syscall
	
	li		$v0,	5								# Input integer.
	syscall
	move	$t0,	$v0
	
	# This function checks if the year is leap or not.
	leap_year:
		li	$t1,	4								# $t1 = 4
		li	$t2,	100								# $t2 = 100
		li	$t3,	400								# $t3 = 400
	
		div		$t4,	$t0,	$t1					# $t4 = $t0 / $t1 = $t0 / 4
		
		# Remainder is stored in 'hi' register.
		mfhi	$s0									# $s0 = rem($t0 / 4).	
		
		div		$t5,	$t0,	$t2					# $t5 = $t0 / $t2 = $t0 / 100
		mfhi	$s1									# $s1 = rem($t0 / 100).
		
		div		$t6,	$t0,	$t3					# $t6 = $t0 / $t3 = $t0 / 400
		mfhi	$s2									# $s2 = rem($t0 / 400).
		
		step_1:
			bne		$s0,	$zero,	step_5			# If $s0 != 0 then goto step_5
			
		step_2:
			bne		$s1,	$zero,	step_4			# If $s1 != 0 then goto step_4
				
		step_3:
			bne		$s2,	$zero,	step_5			# If $s2 != 0 then goto step_5
		
		# In this step, output is printed as yes.
		step_4:
			li		$v0,	4
			la		$a0,	leap
			syscall
				
			li		$v0,	1
			move	$a0,	$t0
			syscall
						
			li		$v0,	4
			la		$a0,	leap_yes
			syscall
						
			j		terminate						# Control jumps to terminate.
		
		# In this step, output is printed as no.
		step_5:
			li		$v0,	4
			la		$a0,	leap
			syscall
						
			li		$v0,	1
			move	$a0,	$t0
			syscall
						
			li		$v0,	4
			la		$a0,	leap_no
			syscall
						
			j		terminate						# Control jumps to terminate.
	
	terminate:
		li		$v0,	10							# Termination call.
		syscall
	
.end main