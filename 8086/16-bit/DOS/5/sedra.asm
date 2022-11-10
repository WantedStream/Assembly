.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
;sum of 1,4,7,10,13...
mov ax,@DATA
mov ds,ax

mov ax,0d
mov bx,1d
again:
add ax,bx
add bx,3d
cmp bx,50d
jbe again 

mov ax, 4c00h
int 21h

END start