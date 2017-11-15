.data
.text

main :

li $t0 , 10

move $t0 , $a0

li $v0 , 1 #print int
syscall

.end main