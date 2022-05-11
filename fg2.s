         .global plus_un, carre
         .global somme, produit
         .text

plus_un: 
        push  {lr}
        push  {fp}
        mov fp,sp 
        ldr r2,[fp,#12]
        add r2,r2,#1
        str r2,[fp,#8]
        pop {fp}
        pop {lr}
        bx lr


carre:   
        push  {lr}
        push  {fp}
        mov fp,sp
        push {r0-r1}
        ldr r2,[fp,#12]
        mov r0,r2
        mov r1,r2
        bl mult
        str r0,[fp,#8]
        pop {r0-r1}
        pop {fp}
        pop {lr}
        bx lr
        

                @ retour a l'appelant

@ fonction somme : ajoute les deux entiers passes en parametre
@ r0, r1 : donnees
@ r2 : resultat
somme:   add      r2, r0, r1
         bx       lr


produit:
        push {lr}
        bl mult
        mov r2,r0
        pop {lr}
        bx lr
        