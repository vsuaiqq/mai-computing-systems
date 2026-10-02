        .eqv    N, 27

        .data
arr:    .space  108

        .text
        .globl  main
main:
        la      s0, arr
        li      s1, 0
        li      s2, N
loop:
        beq     s1, s2, done
        li      a7, 5
        ecall
        beqz    a0, done
        sw      a0, 0(s0)
        addi    s0, s0, 4
        addi    s1, s1, 1
        j       loop
done:
        li      a7, 10
        ecall
