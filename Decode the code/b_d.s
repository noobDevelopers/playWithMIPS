# Correct the following code so that the program converts binary numbers to decimal, and can work perfectly.

		.data
msg:	.asciiz "Enter binary code: "
dec:	.asciiz "\nDecoded number: "

		.text
main:	li $v0,	4
		la $a0, msg
		syscall

		li $v0,	5
		syscall
		move $t0, $v0

		li $s0, 0
		li $s1, 10
		li $s4, 0.5
		li $s5, 2
		li $t2, 0

conv:	beq $t0, $s0, cont
		div $t0, $s1
		mflo $t0
		mfhi $s3
		mul.d $s4, $s4, $s5
		mul $t1, $s3, $s4
		add $t2, $t2, $t1
		j conv

cont:	li $v0, 4
		la $a0, dec
		syscall

		li $v0, 1
		move $a0, $t2
		syscall

		li $v0, 10
		syscall


				# This program was developed by a noob.....as you are a "NOOB" , help this noob to correct the incorrect program and make him feel proud!!

				# Correct the program to make it run.
