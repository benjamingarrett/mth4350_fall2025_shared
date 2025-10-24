.text
    .globl main
main:
    addi sp, sp, -16       # allocate stack space
    sw   ra, 12(sp)        # save return address

    addi a0, x0, 5         # argument = 5
    lui  t0, %hi(double_value)  # load upper 20 bits of address
    addi t0, t0, %lo(double_value)  # add lower 12 bits
    jalr ra, 0(t0)         # jump to function (save return address in ra)

    lw   ra, 12(sp)        # restore return address
    addi sp, sp, 16        # free stack space
    jalr x0, 0(ra)         # return to caller

double_value:
    slli a0, a0, 1         # multiply argument by 2
    jalr x0, 0(ra)         # return to caller
