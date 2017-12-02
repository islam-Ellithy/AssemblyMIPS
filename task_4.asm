.data
 newLine : .asciiz "\n"
.text
.globl main



main :

li $v0 , 5
syscall

####$t0 is parameter num
add $a0 , $zero , $v0

jal fact

add $a1 , $v0 , $zero

jal PrintResult

j Exit

.end main

SpecialCase:
li $v0 , 1
jr $ra

fact :
ble $a0 , 1 , SpecialCase
addi $sp , $sp , 8
sw $ra , 0($sp)
sw $a0 , 4($sp)
addi $a0 , $a0 , -1
jal fact




calculateFact:
lw $ra , 0($sp)
lw $a0 , 4($sp)
mul $v0 , $v0 , $a0
addi $sp, $sp , -8

jr $ra


##################PrintResult

PrintResult:

#####NewLine
la $a0 , newLine
li $v0 , 4
syscall
#####Print Output
li $v0 , 1
move $a0 , $a1
syscall

jr $ra
##################Exit
Exit :
li $v0 , 10
syscall

