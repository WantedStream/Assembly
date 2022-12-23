.MODEL SMALL
.STACK 100h
max EQU 20
.DATA
a DB max DUP(?)
.CODE
start:
mov ax,@Data
mov ds,ax

mov cx,max
mov si,0
again:
mov ax,si
add al,1
mov a[si],al
inc si
LOOP again


mov ax,4c00h
int 21h

end start