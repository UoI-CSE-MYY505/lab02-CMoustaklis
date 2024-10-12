
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------

    add s0, zero, zero
    add s1, zero, a0
    beq a1, zero, done
do_while_loop:
    lw t0, 0(s1)
    bne t0, a2, skip
    add s0, zero, s1
skip:
    addi s1, s1, 4
    add t1, zero, a1
    slli t1, t1, 2
    add t1, t1, a0
    bne s1, t1, do_while_loop
    
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
