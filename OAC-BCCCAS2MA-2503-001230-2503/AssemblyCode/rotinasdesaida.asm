;===========================
; io.asm - Rotinas de saída
;===========================
; Convencoes:
; - print_char:    DL = caractere a imprimir
; - print_str:     DS:DX -> string terminada por '$'
; - print_crlf:    imprime CR/LF
; - print_space:   imprime espaco
; - print_u8:      AL = valor (0..99), imprime em decimal

; imprime caractere em DL
print_char:                 ; inicio da procedure
    mov  ah, 02h            ; AH=02h -> DOS print char
    int  21h                ; chamada ao DOS (usa DL)
    ret                     ; retorna ao chamador

; imprime string terminada em '$' (DS:DX aponta p/ string)
print_str:                  ; inicio da procedure
    mov  ah, 09h            ; AH=09h -> DOS print string '$'
    int  21h                ; chamada ao DOS (usa DS:DX)
    ret                     ; retorna ao chamador

; imprime CR/LF (quebra de linha)
print_crlf:                 ; inicio da procedure
    mov  dl, 13             ; DL = CR (carriage return)
    call print_char         ; imprime CR
    mov  dl, 10             ; DL = LF (line feed)
    call print_char         ; imprime LF
    ret                     ; retorna ao chamador

; imprime um espaço (' ')
print_space:                ; inicio da procedure
    mov  dl, ' '            ; DL = espaco
    call print_char         ; imprime espaco
    ret                     ; retorna

; imprime AL no intervalo 0..99 em decimal
print_u8:                   ; inicio da procedure
    cmp  al, 10             ; valor < 10?
    jb   one_digit          ; se menor que 10, imprime 1 digito
    xor  ah, ah             ; AX = 00AL (prepara dividendo de 8 bits)
    mov  bl, 10             ; BL = 10 (divisor)
    div  bl                 ; AX / BL -> AL=dezenas, AH=unidades
    mov  bh, ah             ; BH = unidades (salva resto)
    add  al, '0'            ; AL -> ASCII da dezena
    mov  dl, al             ; DL = ASCII dezena
    call print_char         ; imprime dezena
    mov  dl, bh             ; DL = unidade (0..9)
    add  dl, '0'            ; unidade -> ASCII
    call print_char         ; imprime unidade
    ret                     ; retorna

one_digit:                  ; ramo para valores 0..9
    add  al, '0'            ; AL -> ASCII unico digito
    mov  dl, al             ; DL = ASCII
    call print_char         ; imprime digito
    ret                     ; retorna
