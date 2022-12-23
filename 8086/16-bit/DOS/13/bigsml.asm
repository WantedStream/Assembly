.MODEL SMALL
.STACK 100h
max EQU 10
.DATA
a DB 10,-20,33,-110,50,0,-44,2,1,-99
sum DB 0
.CODE
start:
mov ax,@Data
mov ds,ax

mov ax,0

mov al,a[0];biggest
mov bl,a[0];smallest
mov cx,max-1
mov si,1
again:
mov dl,a[si];current
cmp al,dl
jg next
mov al,dl
next:
cmp bl,dl
jl next2
mov bl,dl
next2: inc si
LOOP again

mov sum,al
mov ax,4c00h
int 21h

end start