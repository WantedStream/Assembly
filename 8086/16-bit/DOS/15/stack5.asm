.MODEL SMALL
.STACK 100h
.DATA
c dw 0AFh
a dw 12h
b dw 0A9h

.code
start:
mov ax,@Data
mov ds,ax

mov ax,a
cmp ax,b
jnb next
lea bx,a
push bx
lea bx,b
push bx

call swapByRef

next:
mov ax,b
cmp ax,c
jnb next2
lea bx,b
push bx
lea bx,c
push bx
call swapByRef


next2:
mov ax,a
cmp ax,c
jnb next3
lea bx,a
push bx
lea bx,c
push bx
call swapByRef
next3:
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