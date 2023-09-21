addi x3,x0,0    # i = 0
addi x4,x0,10   # const 10
addi x13, x0, 5
loop:
   bge  x3,x4, exit
   add x13, x13, x3
   addi x3,x3,1
   jal x0,loop
exit:
