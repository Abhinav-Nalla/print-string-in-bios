print_char:         ; function to print single character (pass char in AL)
    push bx
    push ax
    mov ah, 0x0e
    mov bh, 0
    int 0x10
    pop ax
    pop bx
    ret

print_str:      ; function to print null-terminated strings (pass string pointer in BX)
    push ax
    push bx
    print_str_while:    ; call print_char function until you reach the terminating 0
    cmp byte [bx], 0
    je print_str_end
        mov al, [bx]
        call print_char
        add bx, 1
        jmp  print_str_while
    print_str_end:
    pop bx
    pop ax
    ret