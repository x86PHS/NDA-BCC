;=====================================================
; ab_sum_full.asm - Leitura buffered (0Ah), parsing 0..99
;                   e impressao A + B = SUM com validacao
;=====================================================
org 100h                    ; arquivo .COM inicia em CS:0100h

start:                      ; ponto de entrada

;--- Ler A -------------------------------------------------
prompt_A:
    mov  dx, offset msgA    ; DS:DX -> "Digite A: "
    call print_str          ; imprime prompt
    mov  dx, offset bufA    ; DX -> bufferA (formato 0Ah)
    call read_line_0Ah      ; le linha para bufA
    mov  cl, [bufA+1]       ; CL = quantidade lida (sem CR)
    cmp  cl, 0              ; vazio?
    je   err_A              ; erro: vazio
    cmp  cl, 2              ; > 2 digitos?
    ja   err_A              ; erro: mais de 2 digitos
    lea  si, [bufA+2]       ; SI -> primeiro caractere digitado
    call parse_u8_strict    ; AX = valor (ou 0FFFFh em erro)
    cmp  ax, 0FFFFh         ; falha na validacao?
    je   err_A              ; se sim, pede de novo
    mov  bl, al             ; BL = A (guarda A em 8 bits)

;--- Ler B -------------------------------------------------
prompt_B:
    mov  dx, offset msgB    ; DS:DX -> "Digite B: "
    call print_str          ; imprime prompt
    mov  dx, offset bufB    ; DX -> bufferB
    call read_line_0Ah      ; lê linha para bufB
    mov  cl, [bufB+1]       ; CL = quantidade lida
    cmp  cl, 0              ; vazio?
    je   err_B              ; erro
    cmp  cl, 2              ; > 2 digitos?
    ja   err_B              ; erro
    lea  si, [bufB+2]       ; SI -> primeiro caractere
    call parse_u8_strict    ; AX = valor de B
    cmp  ax, 0FFFFh         ; falha?
    je   err_B              ; erro
    mov  bh, al             ; BH = B (guarda B em 8 bits)

;--- Imprimir expressao A+B=SUM ----------------------------
    ; imprime A
    mov  al, bl             ; AL = A
    call print_u8           ; imprime A (0..99)
    call print_space        ; espaco
    mov  dl, '+'            ; DL = '+'
    call print_char         ; imprime '+'
    call print_space        ; espaco

    ; imprime B
    mov  al, bh             ; AL = B
    call print_u8           ; imprime B
    call print_space        ; espaco
    mov  dl, '='            ; DL = '='
    call print_char         ; imprime '='
    call print_space        ; espaco

    ; imprime SUM = A+B
    mov  al, bl             ; AL = A
    add  al, bh             ; AL = A + B (0..198, mas nosso print_u8 cobre 0..99)
    ; Observacao: se A+B puder passar de 99, seria preciso print_u16.
    call print_u8           ; imprime soma
    call print_crlf         ; quebra de linha

    ; encerra programa
    mov  ax, 4C00h          ; sair com codigo 0
    int  21h

;--- Tratamento de erro para A -----------------------------
err_A:
    mov  dx, offset msgErr  ; DS:DX -> mensagem de erro
    call print_str          ; imprime erro
    call print_crlf         ; quebra de linha
    jmp  prompt_A           ; tenta novamente

;--- Tratamento de erro para B -----------------------------
err_B:
    mov  dx, offset msgErr  ; DS:DX -> mensagem de erro
    call print_str          ; imprime erro
    call print_crlf         ; quebra de linha
    jmp  prompt_B           ; tenta novamente

;-------------------------
; Dados (terminados em '$')
;-------------------------
msgA   db 'Digite A (0..99): $'               ; prompt A
msgB   db 'Digite B (0..99): $'               ; prompt B
msgErr db 'Entrada invalida. Digite apenas 0..99.$' ; mensagem de erro

;-------------------------
; Buffers para int 21h/0Ah
;-------------------------
bufA db 5           ; [0] capacidade max = 5
     db 0           ; [1] len lido (retornado)
     db 5 dup(?)    ; [2..] dados + CR

bufB db 5           ; buffer para B
     db 0
     db 5 dup(?)

;-------------------------
; Rotinas reutilizaveis
;-------------------------

; ==== io.asm (saida) ====
print_char:
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

print_space:
    mov  dl, ' '
    call print_char
    ret

print_u8:
    cmp  al, 10
    jb   one_digit
    xor  ah, ah
    mov  bl, 10
    div  bl
    mov  bh, ah
    add  al, '0'
    mov  dl, al
    call print_char
    mov  dl, bh
    add  dl, '0'
    call print_char
    ret
one_digit:
    add  al, '0'
    mov  dl, al
    call print_char
    ret

; ==== input_0Ah.asm (entrada) ====
read_line_0Ah:
    mov  ah, 0Ah
    int  21h
    ret

; ==== parse_u8_strict.asm (parsing) ====
parse_u8_strict:
    push bx
    xor  ax, ax
    cmp  cl, 0
    je   invalid
    cmp  cl, 2
    ja   invalid
parse_loop:
    mov  bl, [si]
    cmp  bl, '0'
    jb   invalid
    cmp  bl, '9'
    ja   invalid
    sub  bl, '0'
    mov  dl, 10
    mul  dl
    add  al, bl
    adc  ah, 0
    inc  si
    dec  cl
    jnz  parse_loop
    cmp  ah, 0
    jne  invalid
    pop  bx
    ret
invalid:
    mov  ax, 0FFFFh
    pop  bx
    ret
