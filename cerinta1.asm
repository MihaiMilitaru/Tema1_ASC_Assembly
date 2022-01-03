.data
    sirb16: .space 200
    sirb2: .space 800
    
    formatScanf: .asciz "%s"
    
    formatPrintf: .asciz "%s"
    
    
    
    formatPrintf2: .asciz "%d "
    
    indexsir2: .long 0
    
    minus: .asciz "-" 
    letop: .asciz "let "
    addop: .asciz "add "
    subop: .asciz "sub "
    mulop: .asciz "mul "
    divop: .asciz "div "
   
    
    terminator: .asciz "\n"
    
    a: .asciz "a "
    b: .asciz "b "
    c: .asciz "c "
    d: .asciz "d "
    e: .asciz "e "
    f: .asciz "f "
    g: .asciz "g "
    h: .asciz "h "
    i: .asciz "i "
    j: .asciz "j "
    k: .asciz "k "
    l: .asciz "l "
    m: .asciz "m "
    n: .asciz "n "
    o: .asciz "o "
    p: .asciz "p "
    q: .asciz "q "
    r: .asciz "r "
    s: .asciz "s "
    t: .asciz "t "
    u: .asciz "u "
    v: .asciz "v "
    w: .asciz "w "
    x: .asciz "x "
    y: .asciz "y "
    z: .asciz "z "
    
    suma_integer: .long 0
    suma_ascii: .long 0
    
.text

.global main

main:
    pushl $sirb16
    pushl $formatScanf
    call scanf
    popl %ebx
    popl %ebx
    movl $sirb16, %edi
    movl $sirb2, %esi
    xorl %ecx, %ecx
    
et_for:
    movb (%edi,%ecx,1),%al
    cmp $0, %al
    je et_task
    
    cmp $48, %al
    je cif_0
    
    cmp $49, %al
    je cif_1
    
    cmp $50, %al
    je cif_2
    
    cmp $51, %al
    je cif_3
    
    cmp $52, %al
    je cif_4
    
    cmp $53, %al
    je cif_5
    
    cmp $54, %al
    je cif_6
    
    cmp $55, %al
    je cif_7
    
    cmp $56, %al
    je cif_8
    
    cmp $57, %al
    je cif_9
    
    cmp $65, %al
    je cif_A
    
    cmp $66, %al
    je cif_B
    
    cmp $67, %al
    je cif_C
    
    cmp $68, %al
    je cif_D
    
    cmp $69, %al
    je cif_E
    
    cmp $70, %al
    je cif_F
    
cont:
    incl %ecx
    jmp et_for
    
cif_0:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont
    
cif_1:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont
    
cif_2:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont    
    
cif_3:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont    
    
cif_4:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont    
    
cif_5:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont    
    
cif_6:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont    
    
cif_7:
    pushl %ecx
    movl indexsir2, %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_8:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_9:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_A:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_B:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_C:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont        
    
cif_D:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont     
 
cif_E:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $48, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont     
 
cif_F:
    pushl %ecx
    movl indexsir2, %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    movb $49, (%esi,%ecx,1)
    incl %ecx
    addl $4, indexsir2
    popl %ecx
    jmp cont
  
et_task:
    
     
    movl $sirb2, %edi
    xorl %ecx, %ecx 
    
et_for2:
        
    movb (%edi,%ecx,1),%al
    cmp $0, %al
    je et_exit
    incl %ecx
    movb (%edi,%ecx,1),%al
    
    cmp $49, %al
    je et_operatie
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_variabila
    jmp et_numar_intreg
    
et_operatie:
    addl $8, %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_div
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_sub_mul
    jmp et_let_add
    
et_sub_mul:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_mul
    jmp et_sub
    
et_let_add:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_add
    jmp et_let
    
et_div:
    pushl %ecx
    pushl $divop
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    add $3, %ecx
    jmp et_for2
    
et_mul:
    pushl %ecx
    pushl $mulop
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    add $1, %ecx
    jmp et_for2        
    
et_sub:
    pushl %ecx
    pushl $subop
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    add $1, %ecx
    jmp et_for2    
    
et_add:
    pushl %ecx
    pushl $addop
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    add $1, %ecx
    jmp et_for2    
    
et_let:
    pushl %ecx
    pushl $letop
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    add $1, %ecx
    jmp et_for2     
    
et_variabila:
    add $3, %ecx
    movb (%edi,%ecx,1),%al
    jmp add_ascii_64
    
add_ascii_64:
    
    cmp $48, %al
    je add_ascii_32
    addl $64, suma_ascii 
    jmp add_ascii_32    
       
add_ascii_32:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_ascii_16
    addl $32, suma_ascii 
    jmp add_ascii_16   
   
add_ascii_16:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_ascii_8
    addl $16, suma_ascii 
    jmp add_ascii_8   
      
add_ascii_8:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_ascii_4
    addl $8, suma_ascii 
    jmp add_ascii_4
    
add_ascii_4:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_ascii_2
    addl $4, suma_ascii 
    jmp add_ascii_2
    
add_ascii_2:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_ascii_1
    addl $2, suma_ascii 
    jmp add_ascii_1    
    
add_ascii_1:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je finalizare_ascii
    addl $1, suma_ascii
    jmp finalizare_ascii
    
finalizare_ascii:
   
    
    movl suma_ascii,%ebx
    cmp $97, %ebx
    je ascii_a
        
    cmp $98, %ebx
    je ascii_b
            
    cmp $99, %ebx
    je ascii_c
            
    cmp $100, %ebx
    je ascii_d
            
    cmp $101, %ebx
    je ascii_e
            
    cmp $102, %ebx
    je ascii_f
                
    cmp $103, %ebx
    je ascii_g
                
    cmp $104, %ebx
    je ascii_h
                
    cmp $105, %ebx
    je ascii_i
                
    cmp $106, %ebx
    je ascii_j
                
    cmp $107, %ebx
    je ascii_k
                
    cmp $108, %ebx
    je ascii_l
                
    cmp $109, %ebx
    je ascii_m
                
    cmp $110, %ebx
    je ascii_n
                
    cmp $111, %ebx
    je ascii_o
                
    cmp $112, %ebx
    je ascii_p
                    
    cmp $113, %ebx
    je ascii_q
                
    cmp $114, %ebx
    je ascii_r
                   
    cmp $115, %ebx
    je ascii_s
                      
    cmp $116, %ebx
    je ascii_t
                
    cmp $117, %ebx
    je ascii_u
                
    cmp $118, %ebx
    je ascii_v
                
    cmp $119, %ebx
    je ascii_w
                
    cmp $120, %ebx
    je ascii_x
                
    cmp $121, %ebx
    je ascii_y
                   
    cmp $122, %ebx
    je ascii_z
                     
ascii_a:
    pushl %ecx
    pushl $a
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
    
ascii_b:
    pushl %ecx
    pushl $b
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
        
ascii_c:
    pushl %ecx
    pushl $c
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
        
ascii_d:
    pushl %ecx
    pushl $d
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
        
ascii_e:
    pushl %ecx
    pushl $e
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
        
ascii_f:
    pushl %ecx
    pushl $f
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
        
ascii_g:
    pushl %ecx
    pushl $g
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
           
ascii_h:
    pushl %ecx
    pushl $h
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
       
ascii_i:
    pushl %ecx
    pushl $i
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
       
ascii_j:
    pushl %ecx
    pushl $j
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
       
ascii_k:
    pushl %ecx
    pushl $k
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
       
ascii_l:
    pushl %ecx
    pushl $l
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
       
ascii_m:
    pushl %ecx
    pushl $m
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_n:
    pushl %ecx
    pushl $n
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_o:
    pushl %ecx
    pushl $o
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_p:
    pushl %ecx
    pushl $p
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_q:
    pushl %ecx
    
    pushl $q
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_r:
    pushl %ecx
    pushl $r
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_s:
    pushl %ecx
    pushl $s
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_t:
    pushl %ecx
    pushl $t
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_u:
    pushl %ecx
    pushl $u
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_v:
    pushl %ecx
    pushl $v
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_w:
    pushl %ecx
    pushl $w
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_x:
    pushl %ecx
    pushl $x
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_y:
    pushl %ecx
    pushl $y
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
ascii_z:
    pushl %ecx
    pushl $z
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    popl %ecx
    movl $0, suma_ascii
    incl %ecx
    jmp et_for2
     
et_numar_intreg:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $49, %al
    je et_semn
    jmp add_integer_128
    
et_semn:
    pushl %ecx
    pushl $minus
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx 
    popl %ecx    
    jmp add_integer_128
    

add_integer_128:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_64
    addl $128, suma_integer
    jmp add_integer_64
  
add_integer_64:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_32
    addl $64, suma_integer
    jmp add_integer_32
   
add_integer_32:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_16
    addl $32, suma_integer
    jmp add_integer_16
    
add_integer_16:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_8
    addl $16, suma_integer
    jmp add_integer_8 
 
add_integer_8:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_4
    addl $8, suma_integer
    jmp add_integer_4 
 
add_integer_4:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_2
    addl $4, suma_integer
    jmp add_integer_2 
  
add_integer_2:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je add_integer_1
    addl $2, suma_integer
    jmp add_integer_1 
  
add_integer_1:
    incl %ecx
    movb (%edi,%ecx,1),%al
    cmp $48, %al
    je afisare_integer
    addl $1, suma_integer
    jmp afisare_integer 
 
afisare_integer:
    pushl %ecx
    pushl suma_integer
    pushl $formatPrintf2
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    movl $0, suma_integer
    incl %ecx 
    jmp et_for2
 
  
      
et_exit:
    
     pushl $terminator
     pushl $formatPrintf
     call printf
     popl %ebx
     popl %ebx
    
     pushl $0
     call fflush
     popl %ebx
     mov $1, %eax
     mov $0, %ebx
     int $0x80          

