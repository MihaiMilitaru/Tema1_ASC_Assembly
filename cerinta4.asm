.data
    sir: .space 201
    matrix: .space 1600
    
    n: .space 4
    m: .space 4
    
    const: .long -1
    
    v: .space 400
    
    nr_elem: .space 4
    operand: .space 4
    numar: .space 4
    rez: .space 4
    
    colIndex: .space 4
    linIndex: .space 4
    
    delim: .asciz " "
    sirr: .asciz "A ajuns aici"
    formatPrintf: .asciz "%d "
    terminator: .asciz "\n"
    formatPrintf2: .asciz "%s"
    
    

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
    
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    pushl %eax
    call atoi
    popl %ebx
    movl %eax, n
    
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    pushl %eax
    call atoi
    popl %ebx
    movl %eax, m
    
    movl n, %eax
    movl m, %ebx
    mull %ebx
    movl %eax, nr_elem
    
    xorl %ecx, %ecx
    
    movl $v, %edi
    
    
    
et_for:
    cmp nr_elem, %ecx
    je et_for2
    
    pushl %ecx
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    pushl %eax
    call atoi
    popl %ebx  
    
    popl %ecx
     
    movl %eax, (%edi, %ecx, 4)
    
    incl %ecx
    
    jmp et_for
    
    
et_for2:
        
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    
    movl %eax, rez
    
    movl rez, %edi
    xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al
    cmp $114, %al
    je et_rot90
    
    pushl rez
    call atoi
    popl %ebx
    
    movl %eax, operand
    
    // de aici intervine ultima operatie din cele 4 clasice
    
    
    pushl $delim
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    
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
    
    
et_add:
    movl $v, %edi
    xorl %ecx,%ecx  
    jmp for_add

et_sub:
    movl $v, %edi
    xorl %ecx,%ecx  
    jmp for_sub

et_mul:
    movl $v, %edi
    xorl %ecx,%ecx  
    jmp for_mul

et_div:
    movl $v, %edi
    xorl %ecx,%ecx  
    jmp for_div



    
for_add:
    cmp nr_elem, %ecx
    je et_exit_operatie
    movl (%edi, %ecx, 4),%eax
    addl operand, %eax
    movl %eax,(%edi, %ecx, 4) 
    incl %ecx
    jmp for_add


for_sub:
    cmp nr_elem, %ecx
    je et_exit_operatie
    movl (%edi, %ecx, 4),%eax
    subl operand, %eax
    movl %eax,(%edi, %ecx, 4) 
    incl %ecx
    jmp for_sub


for_mul:
    cmp nr_elem, %ecx
    je et_exit_operatie
    movl (%edi, %ecx, 4),%eax
    mull operand
    movl %eax,(%edi, %ecx, 4) 
    incl %ecx
    jmp for_mul

for_div:
    cmp nr_elem, %ecx
    je et_exit_operatie
    xorl %edx, %edx
    movl (%edi, %ecx, 4),%eax
    cmp $0, %eax
    jl for_div2
    
    idivl operand
    movl %eax,(%edi, %ecx, 4) 
    incl %ecx
    jmp for_div

for_div2:
    mull const
    xorl %edx, %edx
    idivl operand
    mull const
    movl %eax,(%edi, %ecx, 4) 
    incl %ecx
    jmp for_div  
    
et_exit_operatie:
    pushl n
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    pushl m
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx    
    
    xorl %ecx, %ecx
    
    movl $v, %edi
    
    
    jmp afisare_vector
    
afisare_vector:
    cmp nr_elem, %ecx
    je et_exit
    
    movl (%edi, %ecx, 4), %eax
    movl %eax, numar
    
    pushl %ecx
    
    pushl numar
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    incl %ecx
    jmp afisare_vector
    
    

et_rot90:
    
    
    pushl m
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    pushl n
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx    
    
    decl n
    
    movl $0, colIndex
    for_col:
       movl colIndex, %ecx
       cmp %ecx, m
       je et_exit
       
       movl n, %eax
       movl %eax, linIndex
       for_lin:
           movl linIndex, %ecx
           cmp %ecx, const
           je cont
           
           movl linIndex, %eax
           xorl %edx, %edx
           mull m
           addl colIndex, %eax
           
           movl $v, %edi
           movl (%edi, %eax, 4), %ebx
           
           pushl %ebx
           pushl $formatPrintf
           call printf
           popl %ebx
           popl %ebx
           
           pushl $0
           call fflush
           popl %ebx
           
           decl linIndex
           jmp for_lin
    cont:
       incl colIndex
       jmp for_col
    
et_exit:
    pushl $terminator
    pushl $formatPrintf2
    call printf
    popl %ebx
    popl %ebx
    
    pushl $0
    call fflush
    popl %ebx
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80    
