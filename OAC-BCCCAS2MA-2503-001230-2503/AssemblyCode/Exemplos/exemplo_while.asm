; ---------- EXEMPLO WHILE: REPETICAO ----------
.model small
.stack 100h

.data
charX db 'X'   ; Caractere a ser exibido

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5           ; CX = contador = 5

while_loop:
    cmp cx, 0           ; Verifica se CX chegou a 0
    jle fim_while       ; Se CX <= 0 -> sai do loop

    mov ah, 02h         ; Funcao 02h: exibe um caractere
    mov dl, charX       ; DL recebe 'X'
    int 21h             ; Mostra o caractere

    dec cx              ; CX = CX - 1
    jmp while_loop      ; Volta para o inicio

fim_while:
    mov ah, 4Ch
    int 21h
main endp
end main
