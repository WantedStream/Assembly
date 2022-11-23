.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:

mov ax,@Data
mov ds, ax


mov bx,ax
shl ax,4d
shl bx,1d
add ax,bx 

mov ax,4c00h
int 21h

end start