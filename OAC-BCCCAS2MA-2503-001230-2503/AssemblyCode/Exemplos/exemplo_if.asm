; ---------- EXEMPLO IF: COMPARACAO SIMPLES ----------
.model small
.stack 100h

.data
msgMenor db 'AX e menor que BX$',0
msgMaior db 'AX e maior ou igual a BX$',0

.code
main proc
    mov ax, @data       ; Inicializa o segmento de dados
    mov ds, ax

    mov ax, 5           ; AX recebe o valor 5
    mov bx, 10          ; BX recebe o valor 10
    cmp ax, bx          ; Compara AX - BX  -> 5 - 10 = negativo
    jl menor            ; Se resultado < 0 -> salta para "menor"

maior:
    mov dx, offset msgMaior  ; Endereco da mensagem "Maior"
    mov ah, 09h              ; Funcao 09h: exibe string
    int 21h
    jmp fim

menor:
    mov dx, offset msgMenor  ; Endereco da mensagem "Menor"
    mov ah, 09h
    int 21h

fim:
    mov ah, 4Ch              ; Encerra o programa
    int 21h
main endp
end main
