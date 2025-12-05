;=================================================
; hello_loop_refatorado.asm - Le teclas ate ESC
;                             usando procedures de I/O
;=================================================
org 100h                    ; .COM inicia em CS:0100h

start:                      ; ponto de entrada do programa
    mov  dx, offset msg1    ; DS:DX -> mensagem inicial
    call print_str          ; imprime "Pressione teclas (ESC para sair):"
    call print_crlf         ; quebra de linha

read_key:                   ; rotulo do laco de leitura
    mov  ah, 01h            ; AH=01h -> DOS: read char com eco
    int  21h                ; AL recebe ASCII da tecla (bloqueia ate digitar)
    cmp  al, 27             ; 27 decimal = ESC?
    je   done               ; se ESC, sai do laco
    mov  dl, al             ; DL = caractere lido
    call print_char         ; eco manual (poderia ser omitido no 01h)
    jmp  read_key           ; volta a ler

done:                       ; finalizacao
    call print_crlf         ; nova linha antes de sair
    mov  ax, 4C00h          ; AH=4Ch (sair), AL=00 (codigo de retorno)
    int  21h                ; termina o programa

;-------------------------
; Dados (terminados em '$')
;-------------------------
msg1 db 'Pressione teclas (ESC para sair): $'

;-------------------------
; Inclusao das rotinas I/O
; (cole aqui o conteudo de io.asm)
;-------------------------
print_char:                 ; (mesmo corpo de io.asm)
    mov  ah, 02h
    int  21h
    ret

print_str:
    mov  ah, 09h
    int  21h
    ret

print_crlf:
    mov  dl, 13
    call print_char
    mov  dl, 10
    call print_char
    ret
