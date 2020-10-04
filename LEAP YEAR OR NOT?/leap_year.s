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
		
						#To determine whether a year is a leap year, follow these steps:

						#If the year is evenly divisible by 4, go to step 2. Otherwise, go to step 5.
						#If the year is evenly divisible by 100, go to step 3. Otherwise, go to step 4.
						#If the year is evenly divisible by 400, go to step 4. Otherwise, go to step 5.
						#The year is a leap year (it has 366 days).
						#The year is not a leap year (it has 365 days).

						# Using the above conditions implement leap_year fuction

	terminate:
		li		$v0,	10							# Termination call.
		syscall
	
.end main
