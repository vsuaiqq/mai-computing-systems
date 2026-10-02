        .eqv    GROUP, 121
        .eqv    STEP, 11

        .text
        .globl  main
main:
        li      a7, 5
        ecall

        li      t0, GROUP
        li      s2, STEP
        mv      s0, a0
        mv      s1, t0
        ble     s0, s1, loop
        mv      s0, t0
        mv      s1, a0
loop:
        mv      a0, s0
        li      a7, 1
        ecall

        sub     t1, s1, s0
        bltu    t1, s2, done

        li      a0, ' '
        li      a7, 11
        ecall

        add     s0, s0, s2
        j       loop
done:
        li      a0, '\n'
        li      a7, 11
        ecall

        li      a7, 10
        ecall
