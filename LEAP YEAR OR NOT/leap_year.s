#Complete the leap_year function

# L-21
#********************************************************************************************************************************
	.data
    year:		.asciiz		"ENTER ANY YEAR: "
    leap_yes:	.asciiz		"THE YEAR IS A LEAP YEAR."
    leap_no:	.asciiz		"THE YEAR IS NOT A LEAP YEAR."
.text
    main:
        li		$v0,	4								# Printing out the message.
        la		$a0,	year
        syscall
        
        li		$v0,	5								# Input integer.
        syscall
        move	$s0,	$v0
        j       leap_year        
        
        #********************************************
        # This function checks if the year is leap or not.
        leap_year:
            
        #To determine whether a year is a leap year, follow these steps:

        #If the year is evenly divisible by 4, go to step 2. Otherwise, go to step 5.
        #If the year is evenly divisible by 100, go to step 3. Otherwise, go to step 4.
        #If the year is evenly divisible by 400, go to step 4. Otherwise, go to step 5.
        #The year is a leap year (it has 366 days).
        #The year is not a leap year (it has 365 days).

        # Using the above conditions implement leap_year fuction
            step1:
                li      $t1, 4                 
                divu    $s0, $t1                
                mfhi    $t2                    
                beq     $t2, $zero, step2 
                bne     $t2, $zero, step5 
            
            step2:
                li      $t1, 100               
                divu    $s0, $t1                
                mfhi    $t2                     
                beq     $t2, $zero, step3 
                bne     $t2, $zero, step4 

            step3:
                li      $t1, 400               
                divu    $s0, $t1                
                mfhi    $t2                     
                beq     $t2, $zero, step4 
                bne     $t2, $zero, step5 

            step4:
                li      $v0,    4
                la      $a0,    leap_yes
                syscall
                j       terminate
            
            step5:
                li      $v0,    4
                la      $a0,    leap_no
                syscall
                j       terminate

        #********************************************

        terminate:
            li		$v0,	10							# Termination call.
            syscall
        
    .end main
