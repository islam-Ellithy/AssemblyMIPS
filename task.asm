.data
 cuboidLength: .word 60
 cuboidWidth: .word 25
 cuboidHeight: .word 20
 newLine : .asciiz "\n"
.text
.globl main
main :

la $t0 , cuboidLength
la $t1 , cuboidWidth
la $t2 , cuboidHeight

#L
lw $s0 , ($t0)
#W
lw $s1 , ($t1)
#H
lw $s2 , ($t2)

#Volume in t0
#Perimeter in t1
############Volume Calculations
mul $t0 , $s0 , $s1
mul $t0 , $t0 , $s2
add $a0 , $t0 , $0
li $v0 , 1
syscall


#######newLine
la $a0 , newLine
li $v0 , 4
syscall
###################Perimeter Calculations
mul $t0 , $s1 , 2
add $t0 , $t0 , $s0
add $t0 , $t0 , $s2

mul $t0 , $t0 , 4

add $a0 , $t0 , $0 
li $v0 , 1
syscall
##########################
li $v0 , 10
syscall

.end main