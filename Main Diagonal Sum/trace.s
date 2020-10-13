DATA_SIZE=4
.data
    echo_t:     .asciiz "***********************************************************************************************\n*  This is a MIPS Program to find sum of main diagonal elements of a multi dimensional array  *\n***********************************************************************************************\n\n"
    echo_a:     .asciiz "The Integer ARRAY is :\n{{1, 2, 3, 4},\n{5, 6, 7, 8},\n{9, 10, 11, 12},\n{13, 14, 15, 16}}\n\n"
    array:      .word 1 2 3 4
                .word 5 6 7 8
                .word 9 10 11 12
                .word 13 14 15 16
    echo_s:     .asciiz "The SUM of Main Diagonal Elements in ARRAY is:"
    nline:      .asciiz "\n"
    size:       .word 4                                                                   #Dimension of square matrix formed by array

.text
    main:
        li		$v0, 4		 
        la		$a0, echo_t	 
        syscall

        li		$v0, 4		 
        la		$a0, echo_a	
        syscall        

        li      $v0, 4
        la      $a0, echo_s
        syscall

        li      $v0, 4
        la      $a0, nline
        syscall

        la		$a0, array
        lw		$a1, size		
        #lw      $t3, data_s
        jal		SUMDIAGONAL		
        move 	$a0, $v0		
        li      $v0, 1
        syscall

        li      $v0, 10
        syscall

    SUMDIAGONAL:
        li      $v0, 0
        li      $t0, 0

        LOOP:
            mul     $t1, $t0, $a1
            add     $t1, $t1, $t0
            mul     $t1, $t1, DATA_SIZE
            add     $t1, $a0, $t1

            lw      $t2, ($t1)
            add     $v0, $v0, $t2
            addi    $t0, $t0, 1
            blt		$t0, $a1, LOOP
        
        jr		$ra			
      
         		 
        