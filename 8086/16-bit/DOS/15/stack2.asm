.MODEL SMALL
.STACK 100h
.DATA
 str1 dw 1234h
.CODE
start:

mov ax,@Data
mov ds,ax

mov ax,1
mov bx,2
mov cx,3
mov dx,4

push ax
push bx
push cx
push dx
pop ax
pop bx
pop cx
pop dx
mov ax,4c00h
int 21h
end start