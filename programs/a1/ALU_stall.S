addi x30 , x0 , 16
addi x5, x0 , 2
addi x6, x0, 4
add x6, x6, x5
sub x7, x6, x5
slli x28 , x7 , 8
ori x29, x28 , 1000
slli x31 , x29 , 10
sra x18 , x31 , x30
