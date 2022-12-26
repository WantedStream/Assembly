.MODEL SMALL
.stack 100h
.DATA

.CODE
start:
mov ax,@Data
mov ds,ax
xor ax,ax

mov ax,5
push ax
mov bx,4
push bx
call swap
mov ax,4c00h
int 21h

swap PROC
mov bp,sp
ret 4
swap ENDP
end start