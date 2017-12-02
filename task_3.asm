.data
 newLine : .asciiz "\n"
.text
.globl main
main :


li $v0 , 5
syscall

####$t0 is parameter num
move $t0 , $v0


jal countDigits 

j Exit



countDigits :

li $t1 , 0

Loop:

div $t0 , $t0 , 10

addi $t1 , $t1 , 1

beq $t0 , $zero , PrintResult

j Loop

##################PrintResult

PrintResult:

#####NewLine
la $a0 , newLine
li $v0 , 4
syscall
#####Print Output
li $v0 , 1
move $a0 , $t1
syscall

jr $ra
##################Exit
Exit :
li $v0 , 10
syscall

.end main