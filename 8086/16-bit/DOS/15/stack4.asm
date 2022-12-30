.MODEL SMALL
.STACK 100h
.DATA
a db 12h
b db 0A9h
.code
start:
mov ax,@Data
mov ds,ax

lea bx,a
push bx
lea bx,b
push bx

call swapByRef


mov ax,4c00h
int 21h

swapByRef PROC
mov bp,sp
mov bx,[bp+2]
mov ax,[bx]
mov si,[bp+4]
xchg al, [si]
mov [bx],ax 
ret 4
swapByRef ENDP

end start