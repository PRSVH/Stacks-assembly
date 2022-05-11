         .text
         .global  map2
map2:
    push {lr}
    push {fp}
    mov fp,sp @push fp
    sub sp,sp,#12 @push 3 varibles(i,ti[i],return value of f)
    mov r0,#0 @i
    str r0,[fp,#-4] @push i
    ldr r1,[fp,#16] @n
    boucle:
        cmp r0,r1 @while i != n
        bne corp
        add sp,sp,#12 @pop 
        pop {fp}
        pop {lr}
        bx lr

    corp:
        ldr r2,[fp,#20] @address of t1
        ldr r2,[r2,r0]
        str r2,[fp,#-8] @t[i] in fp-8

        ldr r2,[fp,#8] @address of fp
        blx r2
    
        ldr r2,[fp,#12] @addresse of t1
        ldrb r3,[fp,#-12] @return value of f(in fp-12)
        strb r3,[r2,r0] @mise a jour ce valeur
     
        str r2,[fp,#12] @new t[i]
        add r0,r0,#1
        b boucle




