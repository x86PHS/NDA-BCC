;==============================================
; while_leitura.asm
; Demonstra WHILE: ler teclas ate ESC (27)
;==============================================

org 100h

start:
    mov  dx, offset msg
    call print_str
    call print_crlf

while_top:
    mov  ah, 01h           ; DOS: leitura com eco
    int  21h               ; AL = ASCII
    cmp  al, 27            ; 27 = ESC
    je   while_end         ; se ESC, sai do loop
    mov  dl, al            ; DL = caractere
    call print_char        ; eco manual
    jmp  while_top         ; volta ao inicio

while_end:
    call print_crlf
    mov  ax, 4C00h
    int  21h

msg db 'Digite teclas (ESC para sair): $'

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
