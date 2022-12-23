.MODEL SMALl
.STACK 100h
.DATA
a DB 20,30,12,110,1,-1
sum db ?
.CODE
start:

mov ax,4c00h
mov ds,ax

mov ax,0
mov si,0

again:
add al,a[si]
inc si
cmp a[si],-1d
jne again

mov sum,al


mov ax,4c00h
int 21h
end start