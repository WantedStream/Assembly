.MODEL SMALL
.STACK 100h
max EQU 5
.DATA
a DB 10,20,30,40,50
sum DB 0
.CODE
start:
mov ax,@Data
mov ds,ax

mov ax,0
mov cx,max
mov si,0
again:
add al,a[si];
inc si
LOOP again

mov sum,al
mov ax,4c00h
int 21h

end start