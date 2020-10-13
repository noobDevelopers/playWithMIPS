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
	li $t3, 0			
	ble $t0, $t3, print_fact			# base case
# This loop calculates the factorial
# for(i = 1, r =1; i <= n; i++)
#	{
# 		r *= i;	
# 	}

#********************************************************************************************************************************		
#Implement factorial function (hint: use for loop)
		
loop_fact:
	mul $t2, $t2, $t1							#result*=counter
	addi $t1, 1									#counter+=1
	ble $t1, $t0, loop_fact						#if counter<=input, continue with loop
	bgt $t1, $t0, print_fact					#if counter>input, exit loop 
		
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
