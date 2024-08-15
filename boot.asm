[org 0x7c00]

mov bx, msg         ; pass pointer to the string
call print_str      ; call function to print string

jmp $

msg:
    db 10,"Welcome to AbhiOS!",0    ;store string

%include "bios-printing-services.asm"

times 510-($-$$) db 0
dw 0xaa55
