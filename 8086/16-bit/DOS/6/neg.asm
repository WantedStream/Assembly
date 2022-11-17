.MODEL SMALL
.STACK 100h
.DATA
 number db 120d
.CODE
start:
    mov ax,@DATA
    mov ds,ax
    
    
    xor ax,ax
    mov al,number
    NOT al
    add al,1b
    mov ax, 4c00h
    
    int 21h
end start