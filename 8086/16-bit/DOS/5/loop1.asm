.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@DATA
mov ds,ax
mov cx,10d
mov bx,0d

doLoop:
add bx,cx
mov cx,bx
LOOP doLoop

mov ax,4c00h
int 21h
END start