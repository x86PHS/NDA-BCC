;==============================================
; loop_contador.asm
; Demonstra uso da instrução LOOP
;==============================================

org 100h

start:
    mov  cx, 10            ; numero de repeticoes (N=10)
    mov  dx, offset msg
    call print_str
    call print_crlf

repete:
    mov  dl, '#'
    call print_char
    loop repete            ; dec CX ; se CX != 0, salta p/ repete

call print_crlf
mov  ax, 4C00h
int  21h

msg db 'Imprimindo 10 vezes o caractere #: $'

; ---- Rotinas ----
print_str:
    mov  ah, 09h
    int  21h
    ret

print_char:
    mov  ah, 02h
    int  21h
    ret

print_crlf:
    mov  dl, 13
    call print_char
    mov  dl, 10
    call print_char
    ret
