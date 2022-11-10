.MODEL SMALL
.STACK 100h
.DATA 
 
.CODE

start:
mov ax, @DATA
mov ds ,ax

mov ax,0d
mov bx,1d
neg bx

again:
add bx,2d
add ax,bx 
compare: cmp ax,100
jb again

mov dx,ax

mov ax,4c00h
int 21h




END start