        .eqv    STUDENT, 11

        .text
        .globl  main
main:
        li      a7, 5
        ecall

        li      t0, STUDENT
        sub     t1, a0, t0
        seqz    a0, t1
        li      a7, 1
        ecall

        li      a0, '\n'
        li      a7, 11
        ecall

        li      a7, 10
        ecall
