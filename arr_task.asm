.data
 array1: .space 12
.text

main :

la $t0 , array1
li $t1 , 5
sw $t1 , ($t0)
li $t1 , 10
sw $t1, 4($t0)
li $t1 , 15
sw $t1 , 8($t0)

li $v0 , 1
lw $a0 , ($t0)
syscall

lw $a0 , 4($t0)
syscall

lw $a0 , 8($t0)

li $v0 , 10

syscall

.end main