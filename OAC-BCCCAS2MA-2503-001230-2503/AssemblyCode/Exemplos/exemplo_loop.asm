; ---------- EXEMPLO LOOP: REPETICAO CONTROLADA ----------
.model small
.stack 100h

.data
msg db '12345$',0     ; String a ser exibida

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5              ; Contador: 5 repeticoes
    mov si, offset msg     ; SI aponta para o inicio da string

loop_inicio:
    mov ah, 02h            ; Funcao 02h: exibe caractere
    mov dl, [si]           ; DL recebe o caractere atual
    int 21h                ; Exibe na tela
    inc si                 ; Proximo caractere
    loop loop_inicio       ; Decrementa CX e repete ate 0

    mov ah, 4Ch
    int 21h
main endp
end main
