.data
    sir: .space 201
    
    rez: .space 4
    x: .space 4
    y: .space 4
    
    
    formatPrintf: .asciz "%d\n"
    delim: .asciz " "
    
.text

.global main

main:
    pushl $sir
    call gets
   
    popl %ebx
    
    
    pushl $delim
    pushl $sir
    call strtok
    popl %ebx
    popl %ebx
    
    movl %eax, rez
    
    
    pushl %eax
    call atoi
    popl %ebx
    
    
    
    pushl %eax
    
    
    
et_for:
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    
    cmp $0, %eax
    je et_exit
    
    movl %eax, rez
    
    movl rez, %edi
    xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al
    cmp $97, %al
    je et_add
    
    cmp $115, %al
    je et_sub
    
    cmp $109, %al
    je et_mul
    
    cmp $100, %al
    je et_div
    
    
    pushl rez
    call atoi
    popl %ebx
    
    pushl %eax
    
    
    
    jmp et_for
    
et_add:
    
    popl %ebx
    movl %ebx, x
    
    
    popl %ebx
    movl %ebx, y
    
    
    movl x, %eax
    addl y, %eax
    
    pushl %eax
    
    
    jmp et_for    
    
et_sub:
    popl %ebx
    movl %ebx, x
    popl %ebx
    movl %ebx, y
    movl y, %eax
    subl x, %eax
    pushl %eax
    movl $0, %eax   
    jmp et_for    
    
et_div:
    popl %ebx
    movl %ebx, x
    popl %ebx
    movl %ebx, y
    
    movl $0, %edx
    movl y, %eax
    divl x
    pushl %eax
    movl $0, %eax
    jmp et_for
    
et_mul:
    popl %ebx
    movl %ebx, x
    popl %ebx
    movl %ebx, y
    movl x, %eax
    movl y, %ebx
    mull %ebx
    pushl %eax
    movl $0, %eax
    jmp et_for
    
et_exit:
    popl %ebx
    movl %ebx, rez
    
    pushl rez
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    
    
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80    
    
