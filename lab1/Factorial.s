.arch armv7-a
.arm

.section .data
input_msg: .asciz "请输入一个数字以计算其阶乘: "
negative_msg: .asciz "负数的阶乘是未定义的。\n"
format: .asciz "%d"
result_format: .asciz "阶乘结果是: %d\n"
even_msg: .asciz "阶乘结果是偶数。\n"
odd_msg: .asciz "阶乘结果是奇数。\n"

.section .text
.global main
.type main, %function
main:
    push {fp, lr}
    ldr r0, =input_msg
    bl printf

    sub sp, sp, #4
    ldr r0, =format
    mov r1, sp
    bl scanf

    ldr r6, [sp]
    add sp, sp, #4

    cmp r6, #0
    blt negative_output

    mov r2, #1
    mov r3, #1

factorial_loop:
    cmp r2, r6
    bgt factorial_done

    mul r3, r3, r2
    add r2, r2, #1
    b factorial_loop
    
factorial_done:
    push {r3}          @ 保存r3的值
    ldr r0, =result_format
    mov r1, r3
    bl printf
    pop {r3}           @ 恢复r3的值

    and r4, r3, #1      @ 检查阶乘结果的最低位
    cmp r4, #0         @ 比较r4和0
    beq even_output    @ 如果r4为0，则结果是偶数
    b odd_output       @ 否则，结果是奇数

odd_output:
    ldr r0, =odd_msg
    bl printf
    b exit_program

even_output:
    ldr r0, =even_msg
    bl printf
    b exit_program

negative_output:
    ldr r0, =negative_msg
    bl printf
    b exit_program

exit_program:
    mov r0, #0
    pop {fp, lr}
    bx lr

.global displayMessage
.type displayMessage, %function
displayMessage:
    push {fp, lr}
    ldr r0, [sp, #8]
    bl printf
    pop {fp, lr}
    bx lr

.section .note.GNU-stack, "", %progbits

