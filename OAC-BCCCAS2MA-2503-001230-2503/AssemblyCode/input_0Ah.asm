;==========================================
; input_0Ah.asm - Leitura buffered (0Ah)
;==========================================
; Buffer padrao para int 21h/0Ah:
; byte 0: tamanho maximo de leitura (sem contar CR)
; byte 1: tamanho realmente lido (retornado pelo DOS)
; byte 2..N: caracteres digitados; o DOS coloca CR (13) ao fim

bufferA db 5                ; [0] max. 5 chars (sobra: usamos 1-2 digitos)
        db 0                ; [1] len real apos leitura
        db 5 dup(?)         ; [2..] dados e CR (nao precisa zerar)

bufferB db 5                ; buffer para a segunda leitura
        db 0
        db 5 dup(?)

; Le uma linha usando int 21h/0Ah
; Entrada: DX = offset do buffer (formato acima)
; Saida:   [buffer+1] contem len lido (sem CR)
read_line_0Ah:              ; inicio da procedure
    mov  ah, 0Ah            ; AH=0Ah -> DOS buffered input
    int  21h                ; le linha com edicao (backspace etc.)
    ret                     ; retorna ao chamador
