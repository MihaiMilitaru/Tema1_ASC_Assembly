.data
    sir: .space 201
    
    rez: .space 4
    x: .space 4
    y: .space 4
    
    a_has_value: .long 0
    a_value: .space 4
    
    b_has_value: .long 0
    b_value: .space 4
    
    c_has_value: .long 0
    c_value: .space 4
    
    d_has_value: .long 0
    d_value: .space 4
    
    e_has_value: .long 0
    e_value: .space 4
    
    f_has_value: .long 0
    f_value: .space 4
    
    g_has_value: .long 0
    g_value: .space 4
    
    h_has_value: .long 0
    h_value: .space 4
    
    i_has_value: .long 0
    i_value: .space 4
    
    j_has_value: .long 0
    j_value: .space 4
    
    k_has_value: .long 0
    k_value: .space 4
    
    l_has_value: .long 0
    l_value: .space 4
    
    m_has_value: .long 0
    m_value: .space 4
    
    n_has_value: .long 0
    n_value: .space 4
    
    o_has_value: .long 0
    o_value: .space 4
    
    p_has_value: .long 0
    p_value: .space 4
    
    q_has_value: .long 0
    q_value: .space 4
    
    r_has_value: .long 0
    r_value: .space 4
    
    s_has_value: .long 0
    s_value: .space 4
    
    t_has_value: .long 0
    t_value: .space 4
    
    u_has_value: .long 0
    u_value: .space 4
    
    v_has_value: .long 0
    v_value: .space 4
    
    w_has_value: .long 0
    w_value: .space 4
    
    x_has_value: .long 0
    x_value: .space 4
    
    y_has_value: .long 0
    y_value: .space 4
    
    z_has_value: .long 0
    z_value: .space 4
    
    cur_value: .long 0
    
    
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
    
    movl rez, %edi
    xorl %ecx, %ecx
    movb (%edi, %ecx, 1), %al
    
    cmp $97, %al
    jae charge
    
    pushl rez
    call atoi
    popl %ebx
    pushl %eax
    jmp et_for
    
    
    
    
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
    je et_add_a
    
    cmp $115, %al
    je et_sub_s
    
    cmp $109, %al
    je et_mul_m
    
    cmp $100, %al
    je et_div_d
    
    cmp $98, %al
    je et_b
    
    cmp $99, %al
    je et_c
    
    cmp $101, %al
    je et_e
    
    cmp $102, %al
    je et_f
    
    cmp $103, %al
    je et_g
    
    cmp $104, %al
    je et_h
    
    cmp $105, %al
    je et_i
    
    cmp $106, %al
    je et_j
    
    cmp $107, %al
    je et_k
    
    cmp $108, %al
    je et_let_l
    
    cmp $110, %al
    je et_n
    
    cmp $111, %al
    je et_o
    
    cmp $112, %al
    je et_p
    
    cmp $113, %al
    je et_q
    
    cmp $114, %al
    je et_r
    
    cmp $116, %al
    je et_t
    
    cmp $117, %al
    je et_u
    
    cmp $118, %al
    je et_v
    
    cmp $119, %al
    je et_w
    
    cmp $120, %al
    je et_x
    
    cmp $121, %al
    je et_y
    
    cmp $122, %al
    je et_z
    
    pushl rez
    call atoi
    popl %ebx
    pushl %eax
    jmp et_for
    
    
    
et_add_a:
    incl %ecx
    movb (%edi,%ecx,1), %al
    cmp $0, %al
    je et_a
    jmp et_add
    
et_sub_s:
    incl %ecx
    movb (%edi,%ecx,1), %al
    cmp $0, %al
    je et_s
    jmp et_sub
    
et_mul_m:
    incl %ecx
    movb (%edi,%ecx,1), %al
    cmp $0, %al
    je et_m
    jmp et_mul    
    
et_div_d:
    incl %ecx
    movb (%edi,%ecx,1), %al
    cmp $0, %al
    je et_d
    jmp et_div    
    
et_let_l:
    incl %ecx
    movb (%edi,%ecx,1), %al
    cmp $0, %al
    je et_l
    jmp et_let   
    
     
    
et_a:
    movl a_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl a_value, %eax
    pushl %eax
    jmp et_for
    
et_b:
    movl b_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl b_value, %eax
    pushl %eax
    jmp et_for
    
et_c:
    movl c_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl c_value, %eax
    pushl %eax 
    jmp et_for   
    
et_d:
    movl d_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl d_value, %eax
    pushl %eax 
    jmp et_for   
    
et_e:
    movl e_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl e_value, %eax
    pushl %eax   
    jmp et_for 
    
et_f:
    movl f_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl f_value, %eax
    pushl %eax   
    jmp et_for 
    
et_g:
    movl g_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl g_value, %eax
    pushl %eax    
    jmp et_for
    
et_h:
    movl h_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl h_value, %eax
    pushl %eax  
    jmp et_for  
    
et_i:
    movl i_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl i_value, %eax
    pushl %eax   
    jmp et_for 
    
et_j:
    movl j_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl j_value, %eax
    pushl %eax 
    jmp et_for
 
et_k:
    movl k_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl k_value, %eax
    pushl %eax 
    jmp et_for
 
et_l:
    movl l_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl l_value, %eax
    pushl %eax 
    jmp et_for
 
et_m:
    movl m_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl m_value, %eax
    pushl %eax 
    jmp et_for
 
et_n:
    movl n_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl n_value, %eax
    pushl %eax 
    jmp et_for
 
et_o:
    movl o_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl o_value, %eax
    pushl %eax 
    jmp et_for
 
et_p:
    movl p_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl p_value, %eax
    pushl %eax 
    jmp et_for
 
et_q:
    movl q_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl q_value, %eax
    pushl %eax 
    jmp et_for
 
et_r:
    movl r_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl r_value, %eax
    pushl %eax 
    jmp et_for
 
et_s:
    movl s_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl s_value, %eax
    pushl %eax 
    jmp et_for
 
et_t:
    movl t_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl t_value, %eax
    pushl %eax 
    jmp et_for
 
et_u:
    movl u_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl u_value, %eax
    pushl %eax 
    jmp et_for
 
et_v:
    movl v_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl v_value, %eax
    pushl %eax 
    jmp et_for
 
et_w:
    movl w_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl w_value, %eax
    pushl %eax 
    jmp et_for
 
et_x:

    movl x_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl x_value, %eax
    pushl %eax 
    jmp et_for
 
et_y:
    movl y_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl y_value, %eax
    pushl %eax 
    jmp et_for
 
et_z:
    movl z_has_value, %ebx
    cmp $0, %ebx
    je charge
    movl z_value, %eax
    pushl %eax 
    jmp et_for
 
charge:
    pushl rez
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
 

et_let:
    popl %ebx
    
    movl %ebx, cur_value
    
    popl %ebx
    movl %ebx, %eax
    
    movl %eax, %edi
    
    xorl %ecx, %ecx
    movb (%edi,%ecx,1), %al
    
    cmp $97, %al
    je atribuire_a
    
    cmp $98, %al
    je atribuire_b
 
    cmp $99, %al
    je atribuire_c
    
    cmp $100, %al
    je atribuire_d
    
    cmp $101, %al
    je atribuire_e
 
    cmp $102, %al
    je atribuire_f
 
    cmp $103, %al
    je atribuire_g
 
    cmp $104, %al
    je atribuire_h
 
    cmp $105, %al
    je atribuire_i
 
    cmp $106, %al
    je atribuire_j
 
    cmp $107, %al
    je atribuire_k
 
    cmp $108, %al
    je atribuire_l
    
    cmp $109, %al
    je atribuire_m
    
    cmp $110, %al
    je atribuire_n
    
    cmp $111, %al
    je atribuire_o
    
    cmp $112, %al
    je atribuire_p
    
    cmp $113, %al
    je atribuire_q
    
    cmp $114, %al
    je atribuire_r
    
    cmp $115, %al
    je atribuire_s
    
    cmp $116, %al
    je atribuire_t
    
    cmp $117, %al
    je atribuire_u
    
    cmp $118, %al
    je atribuire_v
    
    cmp $119, %al
    je atribuire_w
    
    cmp $120, %al
    je atribuire_x
    
    cmp $121, %al
    je atribuire_y
    
    cmp $122, %al
    je atribuire_z
    
    
atribuire_a:
    movl $1, %eax
    movl %eax, a_has_value
    movl cur_value, %ebx
    movl %ebx, a_value
    movl cur_value, %eax
    
    jmp et_for    
    
atribuire_b:
    movl $1, %eax
    movl %eax, b_has_value
    movl cur_value, %ebx
    movl %ebx, b_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_c:
    movl $1, %eax
    movl %eax, c_has_value
    movl cur_value, %ebx
    movl %ebx, c_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_d:
    movl $1, %eax
    movl %eax, d_has_value
    movl cur_value, %ebx
    movl %ebx, d_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_e:
    movl $1, %eax
    movl %eax, e_has_value
    movl cur_value, %ebx
    movl %ebx, e_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_f:
    movl $1, %eax
    movl %eax, f_has_value
    movl cur_value, %ebx
    movl %ebx, f_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_g:
    movl $1, %eax
    movl %eax, g_has_value
    movl cur_value, %ebx
    movl %ebx, g_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_h:
    movl $1, %eax
    movl %eax, h_has_value
    movl cur_value, %ebx
    movl %ebx, h_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_i:
    movl $1, %eax
    movl %eax, i_has_value
    movl cur_value, %ebx
    movl %ebx, i_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_j:
    movl $1, %eax
    movl %eax, j_has_value
    movl cur_value, %ebx
    movl %ebx, j_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_k:
    movl $1, %eax
    movl %eax, k_has_value
    movl cur_value, %ebx
    movl %ebx, k_value
    movl cur_value, %eax
    
    jmp et_for        
    
atribuire_l:
    movl $1, %eax
    movl %eax, l_has_value
    movl cur_value, %ebx
    movl %ebx, l_value
    movl cur_value, %eax
   
    jmp et_for         
    
atribuire_m:
    movl $1, %eax
    movl %eax, m_has_value
    movl cur_value, %ebx
    movl %ebx, m_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_n:
    movl $1, %eax
    movl %eax, n_has_value
    movl cur_value, %ebx
    movl %ebx, n_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_o:
    movl $1, %eax
    movl %eax, o_has_value
    movl cur_value, %ebx
    movl %ebx, o_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_p:
    movl $1, %eax
    movl %eax, p_has_value
    movl cur_value, %ebx
    movl %ebx, p_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_q:
    movl $1, %eax
    movl %eax, q_has_value
    movl cur_value, %ebx
    movl %ebx, q_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_r:
    movl $1, %eax
    movl %eax, r_has_value
    movl cur_value, %ebx
    movl %ebx, r_value
    movl cur_value, %eax
    
    jmp et_for         
    
atribuire_s:
    movl $1, %eax
    movl %eax, s_has_value
    movl cur_value, %ebx
    movl %ebx, s_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_t:
    movl $1, %eax
    movl %eax, t_has_value
    movl cur_value, %ebx
    movl %ebx, t_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_u:
    movl $1, %eax
    movl %eax, u_has_value
    movl cur_value, %ebx
    movl %ebx, u_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_v:
    movl $1, %eax
    movl %eax, v_has_value
    movl cur_value, %ebx
    movl %ebx, v_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_w:
    movl $1, %eax
    movl %eax, w_has_value
    movl cur_value, %ebx
    movl %ebx, w_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_x:
    movl $1, %eax
    movl %eax, x_has_value
    movl cur_value, %ebx
    movl %ebx, x_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_y:
    movl $1, %eax
    movl %eax, y_has_value
    movl cur_value, %ebx
    movl %ebx, y_value
    movl cur_value, %eax
    
    jmp et_for      
 
atribuire_z:
    movl $1, %eax
    movl %eax, z_has_value
    movl cur_value, %ebx
    movl %ebx, z_value
    movl cur_value, %eax
    
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
