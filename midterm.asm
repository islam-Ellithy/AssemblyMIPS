.data
 arr : .word 1,2,3
 newLine : .asciiz "\n"
.text
.globl main

main:

la $t0 , arr

lw $t1 , 0($t0)

move $t1 , $a0

li $v0 , 1
syscall

#print new line
la $a0 , newLine
li $v0 , 4
syscall

li $v0 , 1
lw $a0 , 8($t0)
syscall

li $v0 , 10
syscall
.end main