%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step
    ;; DO NOT MODIFY
   
    ;; Your code starts here

shifting_loop:
    xor eax, eax; clear eax
    lodsb; load byte from plain into al
    mov bl, 26; move 26 into bl
    add al, dl; add step to al
    cmp al, 90; compare al to 90
    jle not_greater; if al is less than or equal to 90, jump to not_greater
    sub al, bl; subtract bl from al
not_greater:
    stosb; store al into enc_string
    loop shifting_loop; loop back to shifting_loop
    

    ;; Your code ends here
    
    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY
