.data
	msg1: .asciiz "\nInsira o numero: "
	msg2: .asciiz "\nNúmeros impar encontrado: "
	espaco: .asciiz " "
.text
.main
inicio:
	li $t2,1
	li $t3,1
	li $t1,2
	
	li $v0,4
	la $a0,msg1
	syscall
	
	li,$v0,5
	syscall
	add $t0,$v0,$zero
	
se:
	blt $t0,2,inicio
	bgt $t0,20,inicio

enquanto:

	
	add $t4,$t2,$t3
	mul $t5,$t3,$t4
	rem $t6,$t5,2
	
	bne $t6,0,se2
	
altera:

    	add $t2,$t3,$zero 
    	add $t3,$t4,$zero 
    
    	add $t1,$t1,1
    	blt $t1,$t0,enquanto 
    	j fim               
	
se2:
	li $v0, 4
    	la $a0,msg2
    	syscall
	
	li $v0,1
	add $a0,$t5,$zero
	syscall
	
	li $v0, 4
    	la $a0,espaco
    	syscall
	
	add $t1,$t1,1
	ble $t1,$t0,altera
	
fim:	
	
	

	
	
	
		
	
