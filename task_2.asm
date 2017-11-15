.data
 newLine : .asciiz "\n"
 msgNeg : .asciiz "one of the values is negative"
.text
.globl main
main :

Power :
li $v0 , 5
syscall

add $t0 , $v0 , $zero

li $v0 , 5
syscall


add $t1 , $v0 , $zero

blt $t0 , 0 , MessageNegative

blt $t1 , 0 , MessageNegative

li $t2 , 1
Loop :

beq $t1 , 0 , PrintOne

mul $t2 , $t2 , $t0

sub $t1 , $t1 , 1

ble $t1 , 0 , PrintValue

j Loop


PrintOne:
li $t2 , 1


PrintValue:
add $a0 , $t2 , $zero
li $v0 , 1
syscall
j Exit

########msg
MessageNegative:
la $a0 , msgNeg
li $v0 , 4
syscall

##################Exit
Exit :
li $v0 , 10
syscall

.end main