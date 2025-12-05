;==========================================================
; parse_u8_strict.asm - Converte string ASCII (1..2 digitos)
;                       em numero 0..99 com validacao estrita
;==========================================================
; Entradas:
;   DS:SI -> primeiro caractere da string (vinda do buffer+2)
;   CL    -> quantidade de caracteres (vinda de [buffer+1])
; Saida (sucesso):
;   AX = valor (0..99)  ; AH=0, AL=valor
; Saida (erro):
;   AX = 0FFFFh         ; invalido (nao digito, len=0 ou >2)
; Registros usados: AL, AH, BL, DL, SI, CL (preserva BX no retorno)

parse_u8_strict:           ; inicio da procedure
    push bx                ; preserva BX (boa pratica)
    xor  ax, ax            ; zera AX -> acumulador = 0
    cmp  cl, 0             ; len == 0?
    je   invalid           ; erro: vazio
    cmp  cl, 2             ; len > 2?
    ja   invalid           ; erro: mais de 2 digitos

parse_loop:                ; laco sobre CL caracteres
    mov  bl, [si]          ; BL = proximo caractere ASCII
    cmp  bl, '0'           ; < '0'?
    jb   invalid           ; erro: nao e digito
    cmp  bl, '9'           ; > '9'?
    ja   invalid           ; erro: nao e digito
    sub  bl, '0'           ; BL = valor numerico 0..9

    ; acumulador = acumulador*10 + BL
    ; usamos MUL de 8 bits: AL * DL -> AX
    mov  dl, 10            ; DL = 10
    ; nesse ponto, AL contem o acumulado (0..99) da iteracao anterior
    mul  dl                ; AX = AL * 10 (produto cabe em 16 bits)
    add  al, bl            ; AL = AL + dygito (resultado 0..99)
    adc  ah, 0             ; ajusta AH se houvesse carry (nao deve ocorrer em 0..99)

    inc  si                ; avanca ponteiro de leitura
    dec  cl                ; decrementa contagem
    jnz  parse_loop        ; continua se nao acabou

    cmp  ah, 0             ; garantimos AH==0 (valor <= 255)
    jne  invalid           ; se AH != 0, algo estourou (defensivo)
    ; sucesso: AX ja tem valor (AH=0, AL=0..99)
    pop  bx                ; restaura BX
    ret                    ; retorna sucesso

invalid:                   ; caminho de erro
    mov  ax, 0FFFFh        ; AX = erro
    pop  bx                ; restaura BX
    ret                    ; retorna erro
