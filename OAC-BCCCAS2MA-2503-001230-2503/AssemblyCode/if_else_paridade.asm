;==============================================
; if_else_paridade.asm
; Demonstra IF / ELSE: verifica se valor em AL e par ou impar
;==============================================

org 100h                   ; programa .COM inicia em CS:0100h

start:
    mov  al, 7             ; valor de teste (pode mudar)
    mov  ah, 0             ; limpar parte alta p/ evitar lixo
    mov  bl, 2             ; divisor = 2
    div  bl                ; divide AX / BL -> AL=quociente, AH=resto
    cmp  ah, 0             ; resto == 0?
    je   eh_par            ; se igual, e par
    jmp  eh_impar          ; senao, vai para impar

eh_par:
    mov  dx, offset msgPar ; DS:DX -> mensagem
    call print_str
    jmp  fim

eh_impar:
    mov  dx, offset msgImpar
    call print_str

fim:
    call print_crlf
    mov  ax, 4C00h
    int  21h

; ---- Mensagens ----
msgPar   db 'Numero eh PAR.$'
msgImpar db 'Numero eh IMPAR.$'

; ---- Rotinas I/O ----
print_str:
    mov  ah, 09h
    int  21h
    ret

print_crlf:
    mov  dl, 13
    mov  ah, 02h
    int  21h
    mov  dl, 10
    mov  ah, 02h
    int  21h
    ret
