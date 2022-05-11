@ procedure map
@ parametres : A COMPLETER
@ algorithme : A COMPLETER
@ allocation des registres : A COMPLETER

         .text
         .global  map
map:    @i<-r5
        push {lr}  
        push {r0,r1,r2,r3,r4,r5,r6,r7,r8}
        mov r5, r3 
        mov r8, #0 
        loop:
        cmp r8, r1
        bhs endloop
        
        ldrb r3, [r0, r8]
        blx r5
        strb r4, [r2, r8] 

        add r8, r8, #1
        b loop
        endloop:
        pop {r0,r1,r2,r3,r4,r5,r6,r7,r8}
        pop {lr}  
        bx lr

