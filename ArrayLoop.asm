.data
 arr : .word 1,2,3
 newLine : .asciiz "\n"
 Msg: .asciiz "Enter Number \n"
.text
.globl main

main:

li $v0 , 5
syscall

#size at $t0
move $t0 , $v0


SumArr:

#i = 0
li $t1 , 0
#s = 0
li $s0 , 0

Loop:

slt $t2 , $t1 ,$t0

beq $t2 , $zero , Exit

la $a0 , Msg
li $v0 , 4
syscall

li $v0 , 5
syscall

add $s0 , $s0 , $v0

addi $t1 , $t1 , 1

j Loop


Exit :

#print sum
li $v0 , 1
move $a0 , $s0
syscall

#exit
li $v0 , 10
syscall

.end main