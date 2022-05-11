@ fonction red
@ parametres : A COMPLETER
@ algorithme : A COMPLETER
@ allocation des registres : A COMPLETER

         .text
         .global  red
red:
    push {lr}                               @sauvegarde adresse de retour
  
    push {r5,r6,r7,r8,r9,r10}               @push {r5-r10} onto the stack

    mov r8, r0                              @ 
    mov r10, r1                             @
    mov r9, #0                              @
    
    loop1:
        cmp r9, r10                         @
        bhs endloop1                        @

        mov r0, r2                          @ 
        ldrb r1, [r8, r9]                   @
        blx r3                              @
  
        add r9, r9, #1                      @
        b loop1                             @
    endloop1:

    mov r4, r2                              @

    pop {r5,r6,r7,r8,r9,r10}                @pop {r5-r10} from the stack
    pop {lr}                                @restauration adresse de retour
    bx lr                                   @

