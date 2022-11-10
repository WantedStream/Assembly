.MODEL SMALL
.STACK 100h
.DATA
 first DW 0d
 last  DW 1d

.CODE
start:

mov ax,@DATA
mov ds,ax
mov ax,0d
again: ;add numbers to current
mov bx,0d
add bx,first
add bx,last
;update the two last numbers
cmp bx,100d
ja stop

mov cx,last
mov first,cx
mov last,bx

add ax,1d
jmp again

stop:
mov dx,first
mov dx,last
mov ax, 4c00h
int 21h
END start
