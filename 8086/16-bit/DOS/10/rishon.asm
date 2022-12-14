.MODEL SMALL
.STACK 100h
.DATA
var dw 21
.CODE

start:

mov ax,@Data
mov ds,ax
mov ax,0
mov bl,2
again:

mov ax,var


subb:
sub ax,bl
cmp bl,var
jb sb


loop again
mov ax,4c00h
int 21h


end start