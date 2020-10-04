# Complete the loop_fact so that the program computes the factorial of any number

# L-33
#********************************************************************************************************************************

	.data
prompt: .asciiz "ENTER ANY INTEGER: "
res_1: .asciiz "THE FACTORIAL OF "
res_2: .asciiz " is "
res_3: .asciiz ".\n"
	.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Initialising the variables
	
	li $t1, 1			# counter variable
	li $t2, 1			# result variable
	
# This loop calculates the factorial
# for(i = 1, r =1; i <= n; i++)
#	{
# 		r *= i;	
# 	}

#********************************************************************************************************************************
loop_fact:
		
#Implement factorial function (hint: use for loop)

		
		
		
		
		
		
		
		
#********************************************************************************************************************************
# This loop prints the result		
		
print_fact:
		li $v0, 4
		la $a0, res_1
		syscall
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, res_2
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, res_3
		syscall
		
		li $v0, 10
		syscall
